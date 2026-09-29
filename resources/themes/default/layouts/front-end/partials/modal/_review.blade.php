 <!-- Submit a Review Modal -->
 <div class="modal fade" id="submitReviewModal{{$id}}" tabindex="-1" aria-labelledby="submitReviewModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
            <div class="modal-header border-0 pb-0">
                <h6 class="text-center text-capitalize">{{translate('submit_a_review')}}</h6>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body d-flex flex-column gap-3">
                <form action="{{route('review.store')}}" method="post" enctype="multipart/form-data">
                    @csrf
                    <div class="border rounded bg-white">
                        <div class="p-3">
                            @if (isset($order_details->product))
                            <div class="media gap-3">
                                <div class="position-relative">
                                    <img class="d-block" onclick="location.href='{{route('product',$order_details->product['slug'])}}'"
                                    onerror="this.src='{{asset('assets/front-end/img/image-place-holder.png')}}'"
                                    src="{{asset('assets/product/thumbnail')}}/{{$order_details->product['thumbnail']}}"
                                    alt="VR Collection" width="100">

                                    @if($order_details->product->discount > 0)
                                        <span class="price-discount badge badge-primary position-absolute top-1 left-1">
                                            @if ($order_details->product->discount_type == 'percent')
                                                {{round($order_details->product->discount)}}%
                                            @elseif($order_details->product->discount_type =='flat')
                                                {{\App\CPU\Helpers::currency_converter($order_details->product->discount)}}
                                            @endif
                                        </span>
                                    @endif
                                </div>
                                <div class="media-body">

                                    <a href="{{route('product',[$order_details->product['slug']])}}">
                                        <h6 class="mb-1">
                                            {{Str::limit($order_details->product['name'],40)}}
                                        </h6>
                                    </a>
                                    @if($order_details->variant)
                                        <div><small class="text-muted">{{translate('variant')}} : {{$order_details->variant}}</small></div>
                                    @endif
                                    <div><small class="text-muted">{{translate('qty')}} : {{$order_details->qty}}</small></div>
                                    <div><small class="text-muted">{{translate('price')}} : <span class="text-primary">
                                        {{\App\CPU\Helpers::currency_converter($order_details->price)}}
                                        </span></small>
                                    </div>
                                </div>
                            </div>
                            @else
                                <div class="text-center text-capitalize">
                                    <img src="{{asset('assets/front-end/img/icons/nodata.svg')}}" alt="" width="100">
                                    <h5>{{translate('no_product_found')}}!</h5>
                                </div>
                            @endif
                        </div>
                    </div>

                    <div class="d-flex flex-column gap-2 align-items-center my-4">
                        <h5 class="text-center text-capitalize">Rate your experience</h5>
                        
                        @include('layouts.front-end.partials.stars-for-new-review')
                    </div>

                    <h6 class="cursor-pointer">{{translate('have_thoughts_to_share')}}?</h6>
                    <div class="">
                        <input name="product_id" value="{{$order_details->product_id}}" hidden>
                        <input name="order_id" value="{{$order_details->order_id}}" hidden>
                        <textarea rows="4" class="form-control text-area-class" name="comment" placeholder="{{translate('best_product,_highly_recommended')}}.">{{$order_details->product->reviews_by_customer->comment ?? ''}}</textarea>
                    </div>

                    <div class="mt-3">
                        <h6 class="mb-4 text-capitalize">{{translate('upload_images')}}</h6>
                        <div class="mt-2">
                            <div class="d-flex gap-2 flex-wrap">
                                <div class="d-flex gap-4 flex-wrap coba_review">
                                    @if (isset($order_details->product->reviews_by_customer) && $order_details->product->reviews_by_customer->attachment && $order_details->product->reviews_by_customer->attachment != [])
                                        @foreach (json_decode($order_details->product->reviews_by_customer->attachment) as $key => $photo)
                                        <div class="position-relative img_row{{$key}} border rounded border-primary-light">
                                            <span class="img_remove_icon" onclick="remove_img_row('{{$key}}')"><i class="czi-close"></i></span>
                                            <div class="overflow-hidden upload_img_box_img rounded">
                                                <img class="h-auto" onerror="this.src=' {{asset('assets/front-end/img/image-place-holder.png')}}'"
                                                     src="{{asset('/review')}}/{{$photo}}"
                                                     alt="VR Collection">
                                            </div>
                                        </div>
                                        @endforeach
                                    @endif
                                </div>
                            </div>

                            <div class="d-flex flex-wrap upload_images_area pt-3">

                                <div class="d-flex flex-wrap filearray"></div>
                                <div class="selected-files-container"></div>

                                <label class="py-0 d-flex align-items-center m-0 cursor-pointer">
                                        <span class="position-relative">
                                            <img class="border rounded border-primary-light h-70px"
                                                 src="{{asset('assets/front-end/img/image-place-holder.png')}}" alt="">
                                        </span>
                                    <input type="file" class="reviewfilesValue h-100 position-absolute w-100 " hidden multiple accept="image/*">
                                </label>

                            </div>

                        </div>
                    </div>
                    <div class="mt-3 d-flex justify-content-end">
                        <button type="submit" class="btn btn--primary">{{('submit')}}</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

@push('script')
<script>
    function remove_img_row(key){
        $('.img_row'+key).remove();
    }

</script>
@endpush
