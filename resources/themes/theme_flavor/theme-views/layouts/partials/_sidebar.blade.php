<div class="sb">
    <div class="sb-hd">{{translate('categories')}}</div>
    @foreach($web_config['main_categories'] as $category)
        <a href="{{route('products',['id'=> $category['id'],'data_from'=>'category','page'=>1])}}" 
           class="sb-it {{ (isset($data_from) && $data_from == 'category' && isset($id) && $id == $category->id) ? 'act' : '' }}">
            @if($category->icon)
                <img src="{{asset('storage/app/public/category')}}/{{$category->icon}}" 
                     onerror="this.src='{{asset('assets/front-end/img/image-place-holder.png')}}'"
                     style="width: 16px; height: 16px; object-fit: contain;">
            @else
                <i class="ti ti-category"></i>
            @endif
            {{$category->name}}
        </a>
    @endforeach

    <div style="margin-top:16px;padding:0 14px">
        <div style="background:#fef9ee;border:0.5px solid var(--color-primary);border-radius:var(--border-radius-md);padding:12px; opacity: 0.9;">
            <div style="font-size:11px;font-weight:500;color:#7a4d00;margin-bottom:4px">{{translate('need_help?')}}</div>
            <div style="font-size:10px;color:#b07d00;margin-bottom:8px">{{translate('our_kitchen_experts_are_ready_to_assist_you.')}}</div>
            <a href="{{route('contacts')}}" style="text-decoration: none; background:var(--color-primary);color:#111;border:none;border-radius:5px;padding:6px 12px;font-size:10px;font-weight:500;cursor:pointer;width:100%; display: block; text-align: center;">
                {{translate('contact_us')}}
            </a>
        </div>
    </div>
</div>
