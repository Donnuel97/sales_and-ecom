<div class="hdr">
    <div class="logo-area">
        <a href="{{route('home')}}" class="logo-box" style="text-decoration: none;">
            <div class="logo-no1">N<span>O.</span>1</div>
            <div class="logo-kitch">KITCHEN</div>
        </a>
    </div>
    
    <form action="{{route('products')}}" class="srch">
        <input type="hidden" name="data_from" value="search">
        <select class="srch-cat" name="category_id">
            <option value="all">{{translate('all_categories')}}</option>
            @foreach($web_config['main_categories'] as $category)
                <option value="{{$category->id}}">{{$category->name}}</option>
            @endforeach
        </select>
        <input type="text" name="name" placeholder="{{translate('search_for_items')}}..." required />
        <button type="submit" class="srch-btn"><i class="ti ti-search"></i></button>
    </form>

    <div class="hdr-acts">
        @if(auth('customer')->check())
            <div class="dropdown">
                <button class="act-btn dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="ti ti-user"></i>
                    <span>{{translate('account')}}</span>
                </button>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="{{route('user-account')}}">{{translate('my_profile')}}</a>
                    <a class="dropdown-item" href="{{route('account-oder')}}">{{translate('my_order')}}</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="{{route('customer.auth.logout')}}">{{translate('logout')}}</a>
                </div>
            </div>
        @else
            <div class="dropdown">
                <button class="act-btn dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="ti ti-user"></i>
                    <span>{{translate('account')}}</span>
                </button>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="{{route('customer.auth.login')}}">{{translate('login')}}</a>
                    <a class="dropdown-item" href="{{route('customer.auth.sign-up')}}">{{translate('register')}}</a>
                </div>
            </div>
        @endif

        <a href="{{route('wishlists')}}" class="act-btn">
            <i class="ti ti-heart"></i>
            <span>{{translate('wishlist')}}</span>
            <div class="bdg wishlist_count">{{session()->has('wish_list')?count(session('wish_list')):0}}</div>
        </a>

        <div class="dropdown">
            <a href="{{route('shop-cart')}}" class="act-btn">
                <i class="ti ti-shopping-cart"></i>
                <span>{{translate('cart')}}</span>
                @php($cart=\App\CPU\CartManager::get_cart())
                <div class="bdg cart_count">{{$cart->count()}}</div>
            </a>
            <!-- Optional: Nav Cart Dropdown can be included here -->
        </div>
    </div>
</div>
