<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;


class EnsureUserIsAdmin
{
    /**
     * Handle an incoming request.
     *
     * Only allow users with 'admin' or 'super_admin' role.
     */
    public function handle(Request $request, Closure $next)
    {
        // Ensure user is logged in and is an admin or super admin
        $user = Auth::user();

        if (!$user || !in_array($user->role, ['admin', 'super_admin'])) {
            // Optionally, redirect instead of abort if you prefer UX friendliness:
            // return redirect()->route('dashboard')->withErrors('Access denied.');
            abort(403, 'Unauthorized access.');
        }

        return $next($request);
    }
}
