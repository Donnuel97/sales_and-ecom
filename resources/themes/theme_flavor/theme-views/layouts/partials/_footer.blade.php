<footer>
    <div class="footer-grid">
        <div class="footer-col">
            <div class="logo-area" style="margin-bottom: 20px;">
                <div class="logo-box">
                    <div class="logo-no1">N<span>O.</span>1</div>
                    <div class="logo-kitch">KITCHEN</div>
                </div>
            </div>
            <p style="font-size: 12px; color: rgba(255,255,255,0.6); line-height: 1.6;">
                {{ $web_config['name']->value }} - {{ translate('your_trusted_partner_for_professional_kitchen_solutions.') }}
                {{ translate('trusted_by_restaurants,_hotels_&_home_chefs_across_Nigeria.') }}
            </p>
        </div>
        <div class="footer-col">
            <h4>{{ translate('quick_links') }}</h4>
            <ul>
                <li><a href="{{route('home')}}">{{translate('home')}}</a></li>
                <li><a href="{{route('about-us')}}">{{translate('about_us')}}</a></li>
                <li><a href="{{route('contacts')}}">{{translate('contact_us')}}</a></li>
                <li><a href="{{route('helpTopic')}}">{{translate('FAQ')}}</a></li>
            </ul>
        </div>
        <div class="footer-col">
            <h4>{{ translate('categories') }}</h4>
            <ul>
                @foreach($web_config['main_categories']->take(5) as $category)
                    <li><a href="{{route('products',['id'=> $category['id'],'data_from'=>'category','page'=>1])}}">{{$category->name}}</a></li>
                @endforeach
            </ul>
        </div>
        <div class="footer-col">
            <h4>{{ translate('contact_info') }}</h4>
            <p style="font-size: 12px; color: rgba(255,255,255,0.6); margin-bottom: 10px;">
                <i class="ti ti-map-pin"></i> {{ $web_config['address']->value }}
            </p>
            <p style="font-size: 12px; color: rgba(255,255,255,0.6); margin-bottom: 10px;">
                <i class="ti ti-phone"></i> {{ $web_config['phone']->value }}
            </p>
            <p style="font-size: 12px; color: rgba(255,255,255,0.6);">
                <i class="ti ti-mail"></i> {{ $web_config['email']->value }}
            </p>
            <div style="margin-top: 15px; display: flex; gap: 10px;">
                @php($social_media = \App\Model\SocialMedia::where('active_status', 1)->get())
                @if(isset($social_media))
                    @foreach ($social_media as $item)
                        <a href="{{$item->link}}" target="_blank" style="color: rgba(255,255,255,0.6); font-size: 18px;">
                            <i class="{{$item->icon}}"></i>
                        </a>
                    @endforeach
                @endif
            </div>
        </div>
    </div>
    
    <div class="footer-trust" style="background: transparent; border: none; margin-top: 40px; border-top: 1px solid rgba(255,255,255,0.1); padding-top: 30px;">
        <div class="ft-item"><i class="ti ti-building" style="color: #fff;"></i><strong style="color: #fff;">{{ translate('commercial_solutions') }}</strong><span style="color: rgba(255,255,255,0.5);">{{ translate('we_design_complete_kitchens') }}</span></div>
        <div class="ft-item"><i class="ti ti-certificate" style="color: #fff;"></i><strong style="color: #fff;">{{ translate('certified_quality') }}</strong><span style="color: rgba(255,255,255,0.5);">{{ translate('food-grade_standards') }}</span></div>
        <div class="ft-item"><i class="ti ti-map-pin" style="color: #fff;"></i><strong style="color: #fff;">{{ translate('showroom_available') }}</strong><span style="color: rgba(255,255,255,0.5);">{{ translate('visit_us_today') }}</span></div>
        <div class="ft-item"><i class="ti ti-brand-whatsapp" style="color: #fff;"></i><strong style="color: #fff;">{{ translate('fast_support') }}</strong><span style="color: rgba(255,255,255,0.5);">{{ translate('chat_with_us_online') }}</span></div>
    </div>
    
    <div style="text-align: center; margin-top: 40px; font-size: 11px; color: rgba(255,255,255,0.3);">
        &copy; {{ date('Y') }} {{ $web_config['name']->value }}. {{ translate('all_rights_reserved') }}.
    </div>
</footer>
