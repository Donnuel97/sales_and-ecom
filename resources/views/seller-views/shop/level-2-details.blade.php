@foreach ($seller->credentials as $credential)
    <div class="row col-lg-12 mb-3">
        <b class="col-lg-2">

            {{$credential->file_association}}:
        </b>
        <div class="col-lg-10">
            <div class="media flex-column flex-sm-row gap-3" style="max-width: 50%;
                max-height: 250px;
                overflow: hidden;">
                <img style="height: 250px; width: 100%;" src="{{asset('/assets/seller/credentials/'. $credential->file_path)}}">
            </div>
        </div>
    </div>
@endforeach