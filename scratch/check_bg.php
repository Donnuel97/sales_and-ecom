<?php
require 'vendor/autoload.php';
$app = require_once 'bootstrap/app.php';
$app->make('Illuminate\Contracts\Http\Kernel')->handle(Illuminate\Http\Request::capture());

use App\Model\BusinessSetting;

$types = ['body_bg_img', 'company_web_logo', 'company_mobile_logo'];
foreach ($types as $type) {
    $setting = BusinessSetting::where('type', $type)->first();
    if ($setting) {
        echo "Type: " . $setting->type . " | Value: " . $setting->value . "\n";
    } else {
        echo "Type: $type | Setting not found.\n";
    }
}
