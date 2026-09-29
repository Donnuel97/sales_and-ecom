@foreach($paginated_reviews as $productReview)
<div class="p-2" style="margin-bottom: 20px">
    <div class="row product-review d-flex ">
        <div
            class="col-md-3 d-flex mb-3 {{Session::get('direction') === "rtl" ? 'pl-5' : 'pr-5'}}">
            <div
                class="media media-ie-fix  {{Session::get('direction') === "rtl" ? 'ml-4 pl-2' : 'mr-4 pr-2'}}">
                <img class="rounded-circle __img-64 object-cover"
                    onerror="this.src='{{asset('assets/front-end/img/image-place-holder.png')}}'"
                    src="{{asset('assets/profile/'. isset($productReview->user)?$productReview->user->image:'')}}"
                    alt="{{isset($productReview->user)?$productReview->user->f_name:'not exist'}}"/>
                <div
                    class="media-body {{Session::get('direction') === "rtl" ? 'pr-3' : 'pl-3'}} text-body">
                    <span class="font-size-sm mb-0 text-body" style="font-weight: 700;font-size: 12px;">{{isset($productReview->user)?$productReview->user->f_name:'not exist'}}</span>
                    <div class="d-flex ">

                        <div class=" {{Session::get('direction') === "rtl" ? 'ml-2' : 'mr-2'}}">

                            <i class="sr-star czi-star-filled active"></i>

                        </div>
                        <div class="text-body text-nowrap" style="font-weight: 400;font-size: 15px;">
                            {{
                                round(
                                    $productReview->ratings_sum_number/

                                    ($productReview->ratings->count()*5)
                                *5) {{-- factorize as follows: (23/30)*5. Additional *5 is needed eg 30/30 should show 5 instead 1--}}
                            }}/5
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-7">
            <p class="mb-3 text-body __text-sm" style="word-wrap:break-word;">{{isset($productReview->comment) ? $productReview->comment : ''}}</p>
            @if (isset($productReview->attachment) && !empty(json_decode($productReview->attachment)))
                @foreach (json_decode($productReview->attachment) as $key => $photo)
                    <img onclick="showInstaImage('{{asset("assets/review/$photo")}}')" class="cz-image-zoom __img-70 rounded border" onerror="this.src='{{asset('assets/front-end/img/image-place-holder.png')}}'" src="{{asset('assets/review/'. $photo)}}" alt="Product review">
                @endforeach
            @endif
        </div>
        <div class="col-md-2 text-body">
            <span style="float: right;font-weight: 400;font-size: 13px;">{{isset($productReview->updated_at) ? $productReview->updated_at->format('M-d-Y') : ''}}</span>
        </div>
    </div>
</div>
@endforeach
