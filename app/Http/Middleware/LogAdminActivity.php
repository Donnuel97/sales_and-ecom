<?php

namespace App\Http\Middleware;

use App\Model\AuditLog;
use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;

class LogAdminActivity
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        $response = $next($request);

        if (Auth::guard('admin')->check()) {
            $method = strtoupper($request->method());
            
            // Only log state-changing methods
            if (in_array($method, ['POST', 'PUT', 'PATCH', 'DELETE'])) {
                
                // Exclude some common routes that might be too noisy or sensitive (like login/logout)
                $excludeUrls = [
                    'admin/auth/login',
                    'admin/auth/logout',
                ];

                $currentUrl = $request->path();
                foreach ($excludeUrls as $url) {
                    if (str_contains($currentUrl, $url)) {
                        return $response;
                    }
                }

                // Determine module and readable action
                $segments = $request->segments();
                $module = isset($segments[1]) ? ucfirst(str_replace('-', ' ', $segments[1])) : 'Dashboard';
                
                $readableAction = $method;
                if ($method == 'POST' && (str_contains($currentUrl, 'store') || str_contains($currentUrl, 'add'))) {
                    $readableAction = 'Created';
                } elseif (in_array($method, ['POST', 'PUT', 'PATCH']) && str_contains($currentUrl, 'update')) {
                    $readableAction = 'Updated';
                } elseif ($method == 'DELETE' || str_contains($currentUrl, 'delete')) {
                    $readableAction = 'Deleted';
                }

                $description = $readableAction . " " . Str::singular($module);

                // Try to find a name/title in the request
                $identifyingFields = ['name', 'title', 'f_name', 'subject', 'code', 'category_name'];
                $identifier = "";
                foreach ($identifyingFields as $field) {
                    if ($request->has($field)) {
                        $identifier = $request->input($field);
                        if (is_array($identifier)) {
                            // Handle localized fields if they are arrays
                            $identifier = reset($identifier);
                        }
                        break;
                    }
                }

                if ($identifier) {
                    $identifier = strip_tags($identifier);
                    $description .= ": '" . $identifier . "'";
                }

                // Append additional info for status updates
                if (str_contains($currentUrl, 'status')) {
                    $status = $request->input('status') ?? ($request->has('status') ? 'updated' : '');
                    $description = "Changed status of " . Str::singular($module) . ($identifier ? " '" . $identifier . "'" : "") . " to " . $status;
                }

                if (!$identifier && $method != 'DELETE' && !str_contains($currentUrl, 'status')) {
                    // Fallback to generic description if no identifier found
                    $data = $request->except(['password', 'password_confirmation', '_token', 'image']);
                    
                    // Simple recursive strip tags for array data
                    array_walk_recursive($data, function(&$item) {
                        if (is_string($item)) {
                            $item = strip_tags($item);
                        }
                    });

                    $description .= ". " . translate('Data_captured');
                }

                // Prepare payload (filtered and cleaned)
                $payload = $request->except(['password', 'password_confirmation', '_token', 'image']);
                array_walk_recursive($payload, function(&$item) {
                    if (is_string($item)) {
                        $item = strip_tags($item);
                    }
                });

                AuditLog::create([
                    'admin_id' => Auth::guard('admin')->id(),
                    'module' => $module,
                    'action' => $readableAction,
                    'description' => $description,
                    'ip_address' => $request->ip(),
                    'user_agent' => $request->header('User-Agent'),
                    'url' => $request->fullUrl(),
                    'payload' => $payload,
                ]);
            }
        }

        return $response;
    }
}
