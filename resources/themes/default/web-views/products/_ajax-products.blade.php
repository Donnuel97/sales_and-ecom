@php($decimal_point_settings = \App\CPU\Helpers::get_business_settings('decimal_point_settings'))
@foreach($products as $product)
    @if(!empty($product['product_id']))
        @php($product=$product->product)
    @endif
    <div class=" {{Request::is('products*')?'col-lg-3 col-md-4 col-sm-4 col-6':'col-lg-2 col-md-3 col-sm-4 col-6'}} {{Request::is('shopView*')?'col-lg-3 col-md-4 col-sm-4 col-6':''}} p-2">
        @if(!empty($product))
            @include('web-views.partials._single-product', [

                'p'=>$product,

                'decimal_point_settings' => $decimal_point_settings
            ])
        @endif
    </div>
@endforeach

@if($products->hasMorePages())
    <div class="col-12 text-center py-4" id="load-more-container">
        <div id="loading-indicator" style="display: none;">
            <div class="spinner-border text-primary" role="status">
                <span class="sr-only">{{translate('loading')}}...</span>
            </div>
        </div>
        <input type="hidden" id="next-page" value="{{ $products->currentPage() + 1 }}">
    </div>
@endif
