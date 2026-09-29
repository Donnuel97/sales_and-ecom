<ul class="list-group list-group-flush">
    @foreach($products as $product)
        <li class="list-group-item">
            <a href="{{route('product',$product->slug)}}" style="color: inherit; text-decoration: none; display: flex; align-items: center; gap: 10px;">
                <img width="40" src="{{\App\CPU\ProductManager::product_image_path('thumbnail')}}/{{$product['thumbnail']}}" 
                     onerror="this.src='{{asset('assets/front-end/img/image-place-holder.png')}}'">
                <div style="font-size: 13px;">{{$product['name']}}</div>
            </a>
        </li>
    @endforeach
</ul>
