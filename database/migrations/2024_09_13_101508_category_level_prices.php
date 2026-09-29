<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CategoryLevelPrices extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table("categories", function (Blueprint $table) {

            $table->bigInteger("level_2_max")->nullable();

            $table->bigInteger("level_3_max")->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table("categories", function (Blueprint $table) {

            $table->dropColumn("level_2_max");

            $table->dropColumn("level_3_max");
        });
    }
}
