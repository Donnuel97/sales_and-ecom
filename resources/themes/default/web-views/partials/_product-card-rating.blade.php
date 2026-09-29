@php
    if (!isset($average_type_ratings)) {
       
       $lines_per_type = \App\Http\Controllers\Web\ProductDetailsController::buildRatingTypeMap($product->reviews);

       $average_rating = empty($lines_per_type)? 0: \App\Http\Controllers\Web\ProductDetailsController::averageTypeRatings($lines_per_type);
   }
   else $average_rating = $average_type_ratings;
@endphp

<div class="rating-show justify-content-between">
    <span class="d-inline-block font-size-sm text-body">
        @for($index=1; $index<=5; $index++)
            
            @if ($index <= $average_rating)
                <i class="tio-star text-warning"></i>
            @elseif ( $index <= $average_rating + 1.1)
                <i class="tio-star-half text-warning"></i>
            @else
                <i class="tio-star-outlined text-warning"></i>
            @endif
        @endfor

        @if (!isset($exclude_average) || !$exclude_average)
            <label class="badge-style">( {{$average_rating}} )</label>
        @endif
    </span>
</div>