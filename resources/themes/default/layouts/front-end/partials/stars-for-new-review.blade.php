@foreach(\App\Model\ReviewRatings::reviewTypes() as $type)
    <?php

        $customerReview = $order_details->product->reviews_by_customer;

        if (!is_null($customerReview))

            $existingValue = $customerReview->ratings->where("type", $type)->first()->number;
    ?>
    <div class="rating-label-wrap position-relative">

        <div><b>{{ucwords(str_replace("_", " ", $type))}}:</b></div>
        
        <label class="rating-label">
            <input

                class="rating"
                name="review_type[{{$type}}][number]"
                min="1"
                max="5"
                oninput="this.style.setProperty('--value', `${this.valueAsNumber}`)"
                step="1"
                style="--value:{{ $existingValue?? 5}}"
                type="range"
                value="5"
                data-label-name="{{$type}}"
            >
        </label>
        @php($style = '') <!-- this style controlls position of the good.average/excellent text changing dynamically on click -->
        @if(isset($existingValue))
            <?php
                $rating = $existingValue;
                $style = match ($rating) {
                    1 => 'left:5px',
                    2 => 'left:36px',
                    3 => 'left:85px',
                    4 => 'left:112px',
                    default => 'left:155px',
                };
            ?>
        @endif
        <span class="rating_content text-primary fs-12 text-nowrap" data-label-name="{{$type}}" style="top: 75%; {{$style}}">

        @if(isset($existingValue))
            <?php
                $rating_status = match ($existingValue) {
                    1 => translate('poor'),
                    2 => translate('average'),
                    3 => translate('good'),
                    4 => translate('very_good'),
                    default => translate('excellent'),
                };
            ?>
            {{$rating_status}}
        @else
            {{ translate('excellent') }}!
        @endif
        </span>
    </div>
@endforeach

@push('script')
<script>
    
    $('.rating-label-wrap input[type=range]').on('change', function() {
        let ratingVal = $(this).val();

        let ratingContent = $(`.rating_content[data-label-name='${$(this).data("label-name")}']`);

        switch (ratingVal) {
            case "1":
                // Execute code for rating value 1
                ratingContent.text('{{translate('poor')}} !').css('left', '5px');
                $('.text-area-class').prop("placeholder", "");
                break;
            case "2":
                // Execute code for rating value 2
                ratingContent.text('{{translate('average')}} !').css('left', '36px');
                $('.text-area-class').prop("placeholder", "");
                break;
            case "3":
                // Execute code for rating value 3
                ratingContent.text('{{translate('good')}} !').css('left', '85px');
                $('.text-area-class').prop("placeholder", '{{translate('the_product_is_good')}}');
                break;
            case "4":
                // Execute code for rating value 4
                ratingContent.text('{{translate('very_Good')}} !').css('left', '112px');
                $('.text-area-class').prop("placeholder", '{{translate('this_product_is_very_good_I_am_highly_impressed')}}');
                break;
            case "5":
                // Execute code for rating value 5
                ratingContent.text('excellent !').css('left', '155px');
                $('.text-area-class').prop("placeholder", '{{translate('best_product,_highly_recommended')}}');
                break;
            default:
                break;
        }
    });
</script>
@endpush