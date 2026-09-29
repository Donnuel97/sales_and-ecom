<?php

namespace App\Http\Middleware;

use Closure;
use App\CPU\Helpers;
use Illuminate\Support\Facades\Auth;

use App\Model\Seller;

class SellerMiddleware
{
    public const STAGE_1_FALLBACK = "seller.show.reg.two",

    STAGE_2_FALLBACK = "seller.show-pending-review2",

    STAGE_3_FALLBACK = "seller.dashboard.index"; // there is a RedirectIfAuthenticated middleware that forces users here if they try to access a protected seller route

    /**
     * Handle an incoming request.
     *
     * @param \Illuminate\Http\Request $request
     * @param \Closure $next
     * @return mixed
     */
    public function handle($request, Closure $next, ...$arguments)
    {
        $sellerAuth = auth('seller');

        if (!$sellerAuth->check() )

            return redirect()->route('seller.auth.login');

        if (empty($arguments)) return $next($request);

        $seller = $sellerAuth->user();

        $sellerStatus = $seller->status;

        $target = $arguments[0];

        $isApproved = str_contains($sellerStatus, "approved");

        if ($target == Seller::STATUS_APPROVED_1) {

            if ($isApproved) return $next($request); // accept all levels of approved users for routes under middleware-1

            if ($seller->isLevelReg(1))

                return redirect()->route(self::STAGE_1_FALLBACK);

            return redirect()->route(self::STAGE_2_FALLBACK); // user trying to access dashboard should return to pending review 
        }

        if ($target == "register-2") {
            
            if ($isApproved)

                return redirect()->route(self::STAGE_3_FALLBACK)

                ->withErrors(["Already approved"]);

            return $next($request);
        }

        if ($target == "register-3") {

            if ($seller->isLevelReg(3))

                return $next($request);

            return redirect()->route(self::STAGE_2_FALLBACK);
        }
        return "Unknown seller status requested";
    }
}
