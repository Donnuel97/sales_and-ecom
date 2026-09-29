<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{{ trans('errors.500') }}</title>
    
    <!-- Styles -->
    <link rel="stylesheet" href="{{asset('assets/front-end')}}/css/theme.min.css">
    <link rel="stylesheet" href="{{asset('assets/front-end')}}/css/style.css">
</head>
<body>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8 text-center">
                <div class="error-template">
                    <h1>
                        500
                    </h1>
                    <h2>
                        {{ trans('errors.500_title') }}
                    </h2>
                    <div class="error-details">
                        {{ trans('errors.500_description') }}
                    </div>
                    <div class="error-actions">
                        <a href="{{ url('/') }}" class="btn btn-primary ">
                            <span class="icon">
                                <i class="ti-home"></i>
                            </span>
                            <span>{{ trans('errors.return_home') }}</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>