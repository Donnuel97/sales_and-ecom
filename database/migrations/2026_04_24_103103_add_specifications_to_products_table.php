<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddSpecificationsToProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('products', function (Blueprint $table) {
            $table->string('material')->nullable();
            $table->string('capacity')->nullable();
            $table->string('power_type')->nullable();
            $table->string('dimensions')->nullable();
            $table->string('stock_status')->default('in_stock');        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('products', function (Blueprint $table) {
            $table->dropColumn([
                'material',
                'capacity',
                'power_type',
                'dimensions',
                'stock_status'
            ]);        });
    }
}
