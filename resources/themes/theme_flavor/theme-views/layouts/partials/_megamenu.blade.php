<div class="megamenu">
    <a href="{{route('home')}}" class="mm-item {{request()->is('/')?'act':''}}">
        <i class="ti ti-home"></i> {{translate('home')}}
    </a>
    
    @foreach($web_config['main_categories']->take(6) as $category)
        <a href="{{route('products',['id'=> $category['id'],'data_from'=>'category','page'=>1])}}" class="mm-item">
            {{$category->name}}
        </a>
    @endforeach

    <a href="{{route('about-us')}}" class="mm-item {{request()->is('about-us')?'act':''}}">
        {{translate('about_us')}}
    </a>
    
    <a href="{{route('contacts')}}" class="mm-item {{request()->is('contacts')?'act':''}}">
        {{translate('contact_us')}}
    </a>

    <div class="mm-sp"></div>
    
    @php($flash_deals = \App\Model\FlashDeal::where(['status'=>1,'deal_type'=>'flash_deal'])->whereDate('start_date','<=',date('Y-m-d'))->whereDate('end_date','>=',date('Y-m-d'))->first())
    @if(isset($flash_deals))
        <a href="{{route('flash-deals', [$flash_deals['id']])}}" class="mm-item mm-sale">
            <i class="ti ti-tag"></i> {{translate('flash_deals')}}
        </a>
    @endif
</div>
