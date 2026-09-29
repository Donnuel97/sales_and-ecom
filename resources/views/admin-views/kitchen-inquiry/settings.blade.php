@extends('layouts.back-end.app')

@section('title', translate('kitchen_Solutions_Settings'))

@section('content')
    <div class="content container-fluid">
        <div class="mb-3">
            <h2 class="h1 mb-0 text-capitalize d-flex align-items-center gap-2">
                <img width="20" src="{{asset('assets/back-end/img/business-setup.png')}}" alt="">
                {{translate('kitchen_Solutions_Settings')}}
            </h2>
        </div>

        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h5 class="mb-0">{{translate('UI_Customization')}}</h5>
                    </div>
                    <div class="card-body">
                        <form action="{{route('admin.kitchen-inquiry.settings')}}" method="post" enctype="multipart/form-data">
                            @csrf
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="title-color font-weight-bold">{{translate('header_Title')}}</label>
                                        <input type="text" name="header_title" class="form-control" value="{{$settings['header_title'] ?? ''}}" placeholder="{{translate('Ex: Kitchen Solutions')}}">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="title-color font-weight-bold">{{translate('header_Subtitle')}}</label>
                                        <input type="text" name="header_subtitle" class="form-control" value="{{$settings['header_subtitle'] ?? ''}}" placeholder="{{translate('Ex: We design and equip complete kitchens')}}">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="title-color font-weight-bold">{{translate('header_Background_Color')}}</label>
                                        <input type="color" name="header_bg_color" class="form-control" value="{{$settings['header_bg_color'] ?? '#000000'}}">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="title-color font-weight-bold">{{translate('header_Text_Color')}}</label>
                                        <input type="color" name="header_text_color" class="form-control" value="{{$settings['header_text_color'] ?? '#ffffff'}}">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="title-color font-weight-bold">{{translate('header_Background_Image')}}</label>
                                        <div class="custom-file text-left">
                                            <input type="file" name="header_bg_image" id="header_bg_image" class="custom-file-input" accept=".jpg, .png, .jpeg, .gif, .bmp, .tif, .tiff|image/*">
                                            <label class="custom-file-label" for="header_bg_image">{{translate('choose_File')}}</label>
                                        </div>
                                        <div class="mt-2 text-center">
                                            <img class="upload-img-view" id="viewer-header" src="{{asset('assets/kitchen-solutions/'.($settings['header_bg_image'] ?? ''))}}" onerror="this.src='{{asset('assets/back-end/img/900x400/img1.jpg')}}'" alt="bg image" style="width: 100%; max-height: 200px; object-fit: cover;"/>
                                        </div>
                                    </div>
                                </div>
                                <hr class="col-12 my-4">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="title-color font-weight-bold">{{translate('form_Title')}}</label>
                                        <input type="text" name="form_title" class="form-control" value="{{$settings['form_title'] ?? ''}}" placeholder="{{translate('Ex: Request a Consultation')}}">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="title-color font-weight-bold">{{translate('form_Subtitle')}}</label>
                                        <input type="text" name="form_subtitle" class="form-control" value="{{$settings['form_subtitle'] ?? ''}}" placeholder="{{translate('Ex: Share your project details')}}">
                                    </div>
                                </div>
                                <hr class="col-12 my-4">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="title-color font-weight-bold">{{translate('secondary_Section_Title')}}</label>
                                        <input type="text" name="secondary_title" class="form-control" value="{{$settings['secondary_title'] ?? ''}}" placeholder="{{translate('Ex: Expert Kitchen Design')}}">
                                    </div>
                                    <div class="form-group">
                                        <label class="title-color font-weight-bold">{{translate('secondary_Section_Description')}}</label>
                                        <textarea name="secondary_description" class="form-control" rows="4">{{$settings['secondary_description'] ?? ''}}</textarea>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="title-color font-weight-bold">{{translate('secondary_Image')}}</label>
                                        <div class="custom-file text-left">
                                            <input type="file" name="secondary_image" id="secondary_image" class="custom-file-input" accept=".jpg, .png, .jpeg, .gif, .bmp, .tif, .tiff|image/*">
                                            <label class="custom-file-label" for="secondary_image">{{translate('choose_File')}}</label>
                                        </div>
                                        <div class="mt-2 text-center">
                                            <img class="upload-img-view" id="viewer-secondary" src="{{asset('assets/kitchen-solutions/'.($settings['secondary_image'] ?? ''))}}" onerror="this.src='{{asset('assets/back-end/img/400x400/img2.jpg')}}'" alt="secondary image" style="width: 200px; height: 200px; object-fit: cover;"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex justify-content-end gap-3 mt-4">
                                <button type="reset" class="btn btn-secondary px-5">{{translate('reset')}}</button>
                                <button type="submit" class="btn btn--primary px-5">{{translate('save')}}</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('script')
    <script>
        function readURL(input, viewer) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#'+viewer).attr('src', e.target.result);
                }
                reader.readAsDataURL(input.files[0]);
            }
        }

        $("#header_bg_image").change(function () {
            readURL(this, 'viewer-header');
        });

        $("#secondary_image").change(function () {
            readURL(this, 'viewer-secondary');
        });
    </script>
@endpush
