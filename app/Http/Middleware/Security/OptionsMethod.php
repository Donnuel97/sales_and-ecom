<?php

namespace App\Http\Middleware\Security;

use Closure;
use Illuminate\Http\Request;

class OptionsMethod
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
        // If this is an OPTIONS request, return a minimal response
        if ($request->isMethod('OPTIONS')) {
            return response('', 200)
                ->header('Access-Control-Allow-Origin', '*')
                ->header('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, OPTIONS')
                ->header('Access-Control-Allow-Headers', 'Content-Type, X-Requested-With, Accept, Authorization, X-CSRF-TOKEN')
                ->header('Access-Control-Max-Age', '86400');
        }

        return $next($request);
    }
}