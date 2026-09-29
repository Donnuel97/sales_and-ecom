@once
    <script src="{{ asset('vendor/core/packages/theme/js/toast.js') }}?v={{ get_cms_version() }}"></script>

    @if (
        session()->has('success_msg')
        || session()->has('error_msg')
        || (isset($errors) && $errors->count() > 0)
        || isset($error_msg)
    )
        <script type="text/javascript">
            window.addEventListener('load', function() {
                @if (session()->has('success_msg') && !empty(session('success_msg')))
                Theme.showSuccess('{!! BaseHelper::cleanToastMessage(session('success_msg')) !!}');
                @endif

                @if (session()->has('error_msg') && !empty(session('error_msg')))
                Theme.showError('{!! BaseHelper::cleanToastMessage(session('error_msg')) !!}');
                @endif

                @if (isset($error_msg) && !empty($error_msg))
                Theme.showError('{!! BaseHelper::cleanToastMessage($error_msg) !!}');
                @endif

                @if (isset($errors) && $errors->count() > 0)
                @foreach ($errors->all() as $error)
                @if (!empty($error))
                Theme.showError('{!! BaseHelper::cleanToastMessage($error) !!}');
                @endif
                @endforeach
                @endif
            });
        </script>
    @endif
@endonce
