<div class="card" id="level-2-container">
    <div class="card-header col-lg-12 mb-5 justify-content-start">
        <h4>Level 2 documents:</h4>

        <p style="margin-left: 3%;
    margin-top: 5px;">The following documents were uploaded by this vendor</p>
    </div>
    
    @include("seller-views.shop.level-1-details")
</div>

<div class="card" id="level-3-container">
    <div class="card-header col-lg-12 mb-5">
        <h4>Upgrade your store to Level 3</h4>
    </div>
    
    @if($level_3_awaiting)

    	<p style="margin: 1% 3%; padding: 2% 0;">Your documents have been received and are awaiting review.</p>
    @elseif ($level_3_completed)

    	<div>

    		<p style="margin: 1% 3%; padding: 2% 0;">Your documents have been approved for level 3 registration. You can now access all features on the platform.</p>

    		@include("seller-views.shop.level-2-details")
    	</div>

	@else

		<p style="margin: 1% 3%;">Completing this level enables the vendor to upload Agro products above N1 million, and natural resources products worth N4 million and above. Kindly fill the form below to proceed.</p>

	    <br>
	    <div class="col-lg-12">
			<form action="{{route('seller.handle.reg.three')}}" method="post" enctype="multipart/form-data">
				@csrf
	            <div class="card-body">

	                <div class="row flex-nowrap col-sm-12 mt-3">
	                        <div class="form-group col-sm-6">
	                            <div class="custom-file">
	                                <input type="file" name="utility_bill" id="utility-bill" class="custom-file-input"
	                                accept="image/*" required>
	                            <label class="custom-file-label" for="utility-bill">Utility bill or rental contracts</label>
	                        </div></div>

	                        <div id="utility-viewer" class=" col-sm-6">
	                        	
	                        </div>
	                </div>

	                <div class="row flex-nowrap col-sm-12 mt-3">
	                    <!-- 
	                        <div class="pb-3">
	                            <center>
	                                <img class="__img-125px object-cover"
	                                    src="{{asset('assets/back-end/img/400x400/img2.jpg')}}" alt="CAC Document"/>
	                            </center>
	                        </div> -->

	                        <div class="form-group col-sm-6">
	                            <div class="custom-file">
	                                <input type="file" name="CAC_Document" id="CAC-Document" class="custom-file-input"
	                                    accept="image/*" required>
	                                <label class="custom-file-label" for="CAC-Document">CAC Document</label>
	                            </div>
	                        </div>

	                        <div id="cac-viewer"></div>
	                </div>

	                <div class="row flex-nowrap col-sm-12 mt-3">
	                    <!-- 
	                        <div class="pb-3">
	                            <center>
	                                <img class="__img-125px object-cover"
	                                    src="{{asset('assets/back-end/img/400x400/img2.jpg')}}" alt="business-premises"/>
	                            </center>
	                        </div> -->

	                        <div class="form-group col-sm-6">
	                            <div class="custom-file">
	                                <input type="file" name="business_premises" id="business-premises" class="custom-file-input overflow-hidden __p-2p" accept="image/*" required>
	                                <label class="custom-file-label" for="business-premises">Farm or business premises</label>
	                            </div>
	                        </div>

	                        <div id="business-viewer1"></div>
	                </div>

	                <div class="col-sm-6">
	                    <button type="submit" class="btn btn--primary btn-user btn-block" id="apply">Submit </button>
	                </div>
	            </div>
			</form>
	    </div>
	@endif
</div>

@push('script')
	<script src="{{asset('js/image-upload-preview.js')}}"></script>
	<script>

	    bindPreviewFields({
	        "#business-premises": '#business-viewer1',

	        "#utility-bill": '#utility-viewer',

	        "#CAC-Document": '#cac-viewer',
	    });
	</script>
@endpush