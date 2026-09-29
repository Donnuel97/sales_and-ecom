<?php
require 'vendor/autoload.php';
$app = require_once 'bootstrap/app.php';
$kernel = $app->make(Illuminate\Contracts\Console\Kernel::class);
$kernel->bootstrap();

use App\Model\BusinessSetting;

$whatsapp = BusinessSetting::where('type', 'like', '%whatsapp%')->get();
foreach ($whatsapp as $setting) {
    echo $setting->type . ': ' . $setting->value . PHP_EOL;
}

$phone = BusinessSetting::where('type', 'company_phone')->first();
if ($phone) {
    echo 'company_phone: ' . $phone->value . PHP_EOL;
}
