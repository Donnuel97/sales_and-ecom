<style type="text/css">
    .stepper {
        display: flex;
        justify-content: space-between;
        position: relative;
    }
    .step {
        position: relative;
        text-align: center;
        flex: 1;
    }
    .step::before {
        content: '';
        position: absolute;
        bottom: 10%;
        left: 30%;
        height: 2px;
        width: 50%;
        background-color: #ddd;
        z-index: -1;
    }
    .step:first-child::before {
        /*display: none;*/
    }
    .step.active::before,
    .step.completed::before {
        background-color: #00ff00;
    }
    .step.active .step-circle,
    .step.completed .step-circle {
        background-color: #00ff00;
        color: white;
    }
    .step-circle {
        display: inline-block;
        width: 40px;
        height: 40px;
        border-radius: 50%;
        line-height: 40px;
        background-color: #ddd;
        color: #333;
        font-size: 16px;
        font-weight: bold;
    }
    .step-label {
        position: absolute;
        bottom: -85%;
    }
</style>

@php($seller = auth("seller")->user())

<div class="container mt-5" style="margin-bottom: 7%;">
    <div class="stepper">
        <div class="step completed text-center">
            <div class="step-circle">
                <img src="{{asset('assets/icon/checkmark.svg')}}">
            </div>
            <div class="step-label">Level 1</div>
        </div>
        <div class="step {{$seller->reg_level_completed >= 2? 'completed': ''}} text-center">
            <div class="step-circle"> <img src="{{asset('assets/icon/checkmark.svg')}}"></div>
            <div class="step-label">Level 2</div>
        </div>
        <div class="step {{(str_contains($seller->status, 'approved'))? 'completed': ''}} text-center">
            <div class="step-circle"> <img src="{{asset('assets/icon/checkmark.svg')}}"></div>
            <div class="step-label">Level 2 approval</div>
        </div>
        <div class="step {{$seller->reg_level_completed >= 3? 'completed': ''}} text-center">
            <div class="step-circle"> <img src="{{asset('assets/icon/checkmark.svg')}}"></div>
            <div class="step-label">

                @if ($seller->reg_level_completed != 3)

                    <a href="{{route('seller.shop.view')}}#level-3-container">Level 3</a>
                @else
                    Level 3
                @endif
            </div>
        </div>
        <div class="step {{$seller->status == 'approved-2'? 'completed': ''}} text-center">
            <div class="step-circle"> <img src="{{asset('assets/icon/checkmark.svg')}}"></div>
            <div class="step-label">Level 3 approval</div>
        </div>
    </div>
</div>