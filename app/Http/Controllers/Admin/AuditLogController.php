<?php

namespace App\Http\Controllers\Admin;

use App\CPU\Helpers;
use App\Http\Controllers\Controller;
use App\Model\AuditLog;
use Illuminate\Http\Request;

class AuditLogController extends Controller
{
    public function index(Request $request)
    {
        $query_param = [];
        $search = $request['search'];
        if ($request->has('search')) {
            $key = explode(' ', $request['search']);
            $logs = AuditLog::with('admin')
                ->where(function ($q) use ($key) {
                    foreach ($key as $value) {
                        $q->orWhere('module', 'like', "%{$value}%")
                            ->orWhere('action', 'like', "%{$value}%")
                            ->orWhere('description', 'like', "%{$value}%")
                            ->orWhere('ip_address', 'like', "%{$value}%");
                    }
                });
            $query_param = ['search' => $request['search']];
        } else {
            $logs = AuditLog::with('admin');
        }

        $logs = $logs->latest()->paginate(Helpers::pagination_limit())->appends($query_param);
        return view('admin-views.audit-log.index', compact('logs', 'search'));
    }
}
