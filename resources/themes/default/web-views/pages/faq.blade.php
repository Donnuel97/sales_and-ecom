@extends('layouts.front-end.app')

@section('title',translate('FAQ'))

@push('css_or_js')
    <meta property="og:image" content="{{asset('assets/company')}}/{{$web_config['web_logo']->value}}"/>
    <meta property="og:title" content="FAQ of {{$web_config['name']->value}} "/>
    <meta property="og:url" content="{{env('APP_URL')}}">
    <meta property="og:description" content="{{ substr(strip_tags(str_replace('&nbsp;', ' ', $web_config['about']->value)),0,160) }}">

    <meta property="twitter:card" content="{{asset('assets/company')}}/{{$web_config['web_logo']->value}}"/>
    <meta property="twitter:title" content="FAQ of {{$web_config['name']->value}}"/>
    <meta property="twitter:url" content="{{env('APP_URL')}}">
    <meta property="twitter:description" content="{{ substr(strip_tags(str_replace('&nbsp;', ' ', $web_config['about']->value)),0,160) }}">

    <style>

        details {
            margin-bottom: 15px;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #f9f9f9;
        }
        summary {
            font-weight: bold;
            cursor: pointer;
        }
        summary::-webkit-details-marker {
            display: none; /* Hide default marker */
        }
        details[open] summary::before {
            content: '− '; /* Minus sign when open */
        }
        details:not([open]) summary::before {
            content: '+ '; /* Plus sign when closed */
        }

        @media (max-width: 600px) {
            .sidebar_heading {
                background: {{$web_config['primary_color']}}
            }
        }

    </style>
@endpush

@section('content')
<div class="__inline-60">
    <!-- Page Title-->
    <div class="container rtl">
        <div class="row">
            <div class="col-md-12 sidebar_heading text-center mb-2">
                <h1 class="h3  mb-0 folot-left headerTitle">{{translate('frequently_asked_question')}}</h1>
            </div>
        </div>
        <hr>
    </div>

    <!-- Page Content-->
    <div class="container pb-5 mb-2 mb-md-4 mt-3 rtl">
        <details>
            <summary>What is a Trust tag?</summary>
            <p>A trust tag is a digital marker used to indicate that a vendor has been verified on the platform.</p>
        </details>

        <details>
            <summary>Who is a vendor?</summary>
            <p>Vendors are individuals or businesses that sell products on the platform. They can be categorized as verified or unverified based on their level of trust and credibility.</p>
        </details>

        <details>
            <summary>Who is a verified vendor?</summary>
            <p>Verified vendors are those who have undergone a verification process to ensure their authenticity and reliability. This process typically involves providing documentation to confirm their identity and business legitimacy. Verified vendors often enjoy higher levels of trust and credibility among buyers.</p>
        </details>

        <details>
            <summary>Who is an unverified vendor?</summary>
            <p>Unverified vendors are those who have not yet completed the verification process. While they can still sell products or services on the platform, they may face limitations or restrictions compared to verified vendors. Buyers may exercise caution when dealing with unverified vendors.</p>
        </details>

        <details>
            <summary>What are the vendor verification levels?</summary>
            <p>Our platform has two vendor verification levels: Level 1 and Level 2.</p>
        </details>

        <details>
            <summary id="level-1-verif">What is level 1 verification?</summary>
            <p>Level 1 verification requires vendors to provide basic information like their first name, last name, NIN, phone number, shop address, account number, and profile photos. This level allows for product upload and sales, but with limitations based on the product category.</p>
        </details>

        <details>
            <summary id="level-2-verif">What is level 2 verification?</summary>
            <p>Level 2 verification requires vendors to provide additional documentation, such as utility bills, rental contracts, CAC documents, and pictures of their business or farm premises. This higher level of verification allows for unlimited product upload and sales.</p>
        </details>

        <details>
            <summary>As a level 1 vendor, what amount of product can I sell?</summary>
            <p>The maximum product sales limit for Level 1 vendors depends on the product category:
                <ul>
                    <li>Agro products: 1 million</li>
                    <li>Natural resources: 4 million</li>
                </ul>
            </p>
        </details>

        <details>
            <summary>As a level 2 vendor, what amount of product can I sell?</summary>
            <p>Level 2 vendors have no limit on product upload and sales. They can sell as much as they want.</p>
        </details>

        <details>
            <summary>How do I get verification on the Number 1 Kitchen platform?</summary>
            <p>1. <strong>Sign Up (Level 0 Prompted Sign-Up):</strong>
                <ul>
                    <li>Register using either your email or phone number and create a password.</li>
                </ul>
            </p>
            <p>2. <strong>Level 1 Verification:</strong>
                <ul>
                    <li>Provide the following details:
                        <ul>
                            <li>First name and Last name.</li>
                            <li>NIN (National Identification Number) for validation.</li>
                            <li>Phone number.</li>
                            <li>Shop address.</li>
                            <li>Account number (to be validated).</li>
                            <li>Profile photo (snap and upload).</li>
                            <li>Vendor profile icon/photo.</li>
                        </ul>
                    </li>
                    <li>After successful verification, you will be allowed to upload products and make sales, but with a limit of ₦1 million for agro-products and ₦4 million for natural resources categories.</li>
                </ul>
            </p>
            <p>3. <strong>Level 2 Verification:</strong>
                <ul>
                    <li>To upgrade to Level 2, submit the following documents:
                        <ul>
                            <li>Utility bills or rental contracts.</li>
                            <li>CAC documents (Corporate Affairs Commission).</li>
                            <li>Pictures of your business or farm premises as proof.</li>
                        </ul>
                    </li>
                    <li>Upon completing Level 2 verification, you will have unlimited product uploads and sales.</li>
                </ul>
            </p>
        </details>
    </div>
</div>
@endsection