<a href="{{route('products',['id'=> $category['id'],'data_from'=>'category','page'=>1])}}" class="cat-card">
    <div class="cat-ic">
        @if($category->icon)
            <img src="{{asset('storage/app/public/category')}}/{{$category->icon}}" 
                 onerror="this.src='{{asset('assets/front-end/img/image-place-holder.png')}}'"
                 style="width: 24px; height: 24px; object-fit: contain;">
        @else
            <i class="ti ti-category"></i>
        @endif
    </div>
    <div class="cat-nm">{{$category->name}}</div>
</a>
