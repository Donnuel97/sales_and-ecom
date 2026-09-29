@extends('layouts.back-end.app')

@section('title', translate('category'))

@section('content')
    <div class="content container-fluid">
        <!-- Page Title -->
        <div class="d-flex flex-wrap gap-2 align-items-center mb-3">
            <h2 class="h1 mb-0">
                <img src="{{asset('assets/back-end/img/brand-setup.png')}}" class="mb-1 mr-1" alt="">
                @if($category['position'] == 1)
                    {{translate('sub')}}
                @elseif($category['position'] == 2)
                    {{translate('sub_Sub')}}
                @endif
                {{translate('category')}}
                {{translate('update')}}
            </h2>
        </div>
        <!-- End Page Title -->

        <!-- Content Row -->
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <!-- <div class="card-header">
                        {{ translate('category_form')}}
                    </div> -->
                    <div class="card-body" style="text-align: {{Session::get('direction') === "rtl" ? 'right' : 'left'}};">
                        <form action="{{route('admin.category.update',[$category['id']])}}" method="POST" enctype="multipart/form-data">
                            @csrf
                            @php($language=\App\Model\BusinessSetting::where('type','pnc_language')->first())
                            @php($language = $language->value ?? null)
                            @php($default_lang = 'en')

                            @php($default_lang = json_decode($language)[0])
                            <ul class="nav nav-tabs w-fit-content mb-4">
                                @foreach(json_decode($language) as $lang)
                                    <li class="nav-item text-capitalize">
                                        <a class="nav-link lang_link {{$lang == $default_lang? 'active':''}}"
                                           href="#"
                                           id="{{$lang}}-link">{{\App\CPU\Helpers::get_language_name($lang).'('.strtoupper($lang).')'}}</a>
                                    </li>
                                @endforeach
                            </ul>
                            <div class="row">
                                <div class="{{ $category['parent_id']==0 || $category['position'] == 1 ? 'col-lg-6':'col-12' }}">
                                    @foreach(json_decode($language) as $lang)
                                    <div>
                                        <?php
                                        if (count($category['translations'])) {
                                            $translate = [];
                                            foreach ($category['translations'] as $t) {
                                                if ($t->locale == $lang && $t->key == "name") {
                                                    $translate[$lang]['name'] = $t->value;
                                                }
                                            }
                                        }
                                        ?>
                                        <div class="form-group {{$lang != $default_lang ? 'd-none':''}} lang_form"
                                            id="{{$lang}}-form">
                                            <label class="title-color">
                                                @if($category['position'] == 1)
                                                    {{translate('sub_category_name')}}
                                                @elseif($category['position'] == 2)
                                                    {{translate('sub_sub_category_name')}}
                                                @else
                                                    {{translate('category_Name')}}
                                                @endif
                                                ({{strtoupper($lang)}})</label>
                                            <input type="text" name="name[]"
                                                value="{{$lang==$default_lang?$category['name']:($translate[$lang]['name']??'')}}"
                                                class="form-control"
                                                placeholder="{{translate('new_Category')}}" {{$lang == $default_lang? 'required':''}}>
                                        </div>
                                        <input type="hidden" name="lang[]" value="{{$lang}}">
                                    </div>
                                    @endforeach

                                    @if($category['position'] == 1)
                                        <div class="form-group">
                                            <label class="title-color" for="parent_id">{{translate('main_Category')}} <span class="text-danger">*</span></label>
                                            <select id="parent_id" name="parent_id" class="form-control" required>
                                                <option value="" disabled>{{translate('select_main_category')}}</option>
                                                @foreach(\App\Model\Category::where(['position'=>0])->get() as $main_category)
                                                    <option value="{{$main_category['id']}}" {{$category['parent_id'] == $main_category['id'] ? 'selected' : ''}}>
                                                        {{$main_category['defaultname']}}
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>
                                    @endif

                                    @if($category['position'] == 2)
                                        @php($sub_category = \App\Model\Category::find($category['parent_id']))
                                        @php($main_category_id = $sub_category ? $sub_category->parent_id : 0)
                                        <div class="form-group">
                                            <label class="title-color">{{translate('main_Category')}} <span class="text-danger">*</span></label>
                                            <select class="form-control" id="cat_id" required>
                                                <option value="" disabled>{{translate('select_main_category')}}</option>
                                                @foreach(\App\Model\Category::where(['position'=>0])->get() as $main_cat)
                                                    <option value="{{$main_cat['id']}}" {{$main_category_id == $main_cat['id'] ? 'selected' : ''}}>
                                                        {{$main_cat['defaultname']}}
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label class="title-color text-capitalize" for="parent_id">{{translate('sub_category_Name')}} <span class="text-danger">*</span></label>
                                            <select name="parent_id" id="parent_id" class="form-control" required>
                                                @if($main_category_id)
                                                    @foreach(\App\Model\Category::where(['parent_id' => $main_category_id])->get() as $sub_cat)
                                                        <option value="{{$sub_cat['id']}}" {{$category['parent_id'] == $sub_cat['id'] ? 'selected' : ''}}>
                                                            {{$sub_cat['defaultname']}}
                                                        </option>
                                                    @endforeach
                                                @endif
                                            </select>
                                        </div>
                                    @endif

                                    <div class="form-group">
                                        <label class="title-color" for="priority">{{translate('priority')}}</label>
                                        <select class="form-control" name="priority" id="" required>
                                            @for ($i = 0; $i <= 10; $i++)
                                            <option
                                            value="{{$i}}" {{$category['priority']==$i?'selected':''}}>{{$i}}</option>
                                            @endfor
                                        </select>
                                    </div>
                                <!--image upload only for main category and sub category-->
                                @if($category['parent_id']==0 || $category['position'] == 1)
                                    <div class="from_part_2">
                                        <label class="title-color">{{translate('category_Logo')}}</label>
                                        <span class="text-info">({{translate('ratio')}} 1:1)</span>
                                        <div class="custom-file text-left">
                                            <input type="file" name="image" id="customFileEg1"
                                                   class="custom-file-input"
                                                   accept=".webp, .jpg, .png, .jpeg, .gif, .bmp, .tif, .tiff, image/*">
                                            <label class="custom-file-label"
                                                   for="customFileEg1">{{translate('choose_File')}}</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 mt-5 mt-lg-0 from_part_2">
                                    <div class="form-group">
                                        <center>
                                            <img class="upload-img-view"
                                                    id="viewer"
                                                    onerror="this.src='{{asset('assets/front-end/img/image-place-holder.png')}}'"
                                                    src="{{asset('assets/category')}}/{{$category['icon']}}"
                                                    alt="" style="width: 200px; height: 200px; object-fit: cover; border-radius: 10px; border: 1px solid #ddd;"/>
                                        </center>
                                    </div>
                                </div>
                                @endif
                                @if($category['position'] == 2)
                                        <div class="d-flex justify-content-end gap-3 mt-3">
                                            <button type="reset" id="reset" class="btn btn-secondary px-4">{{ translate('reset')}}</button>
                                            <button type="submit" class="btn btn--primary px-4">{{ translate('update')}}</button>
                                        </div>
                                    </div>
                                @endif
                            </div>

                            @if($category['parent_id']==0 || $category['position'] == 1)
                                <div class="d-flex justify-content-end gap-3 mt-3">
                                    <button type="reset" id="reset" class="btn btn-secondary px-4">{{ translate('reset')}}</button>
                                    <button type="submit" class="btn btn--primary px-4">{{ translate('update')}}</button>
                                </div>
                            @endif
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('script')

    <script>
        $(".lang_link").click(function (e) {
            e.preventDefault();
            $(".lang_link").removeClass('active');
            $(".lang_form").addClass('d-none');
            $(this).addClass('active');

            let form_id = this.id;
            let lang = form_id.split("-")[0];
            console.log(lang);
            $("#" + lang + "-form").removeClass('d-none');
            if (lang == '{{$default_lang}}') {
                $(".from_part_2").removeClass('d-none');
            } else {
                $(".from_part_2").addClass('d-none');
            }
        });

        $(document).ready(function () {
            $('#dataTable').DataTable();
        });
    </script>

    <script>
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#viewer').attr('src', e.target.result);
                }

                reader.readAsDataURL(input.files[0]);
            }
        }

        $("#customFileEg1").change(function () {
            readURL(this);
        });

        $('#cat_id').on('change', function () {
            var id = $(this).val();
            if (id != '') {
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });
                $.ajax({
                    type: 'POST',
                    url: '{{route('admin.sub-sub-category.getSubCategory')}}',
                    data: {
                        id: id
                    },
                    success: function (result) {
                        $("#parent_id").html(result);
                    }
                });
            }
        });
    </script>
@endpush
