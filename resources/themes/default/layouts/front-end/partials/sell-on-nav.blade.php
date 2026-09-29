@if (!auth('seller')->check())
    <li class="nav-item">
        <div class="dropdown">
            <button class="btn dropdown-toggle text-white text-max-md-dark text-capitalize" type="button" id="dropdownMenuButton"
                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                    style="padding-{{Session::get('direction') === "rtl" ? 'right' : 'left'}}: .5rem">
                {{ translate('store_zone')}}
            </button>
            <div class="dropdown-menu __dropdown-menu-3 __min-w-165px" aria-labelledby="dropdownMenuButton"
                style="text-align: {{Session::get('direction') === "rtl" ? 'right' : 'left'}};">
                <a class="dropdown-item" href="{{route('shop.apply')}}">
                    {{ translate('register_store')}}
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="{{route('seller.auth.login')}}">
                    {{ translate('store_login')}}
                </a>
            </div>
        </div>
    </li>
@else
    <li class="nav-item">
        <a href="{{route('seller.dashboard.index')}}" class="nav-link text-capitalize">
            Seller Dashboard
        </a>
    </li>
@endif