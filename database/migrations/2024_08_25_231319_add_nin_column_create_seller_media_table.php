<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

use App\Model\Seller;

class AddNinColumnCreateSellerMediaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table("sellers", function (Blueprint $table) {

            $table->bigInteger("nin")->nullable();

            $table->integer("reg_level_completed")->default(1);
        });

        Schema::create("seller_credentials", function (Blueprint $table) {

            $table->id();

            $table->timestamps();

            $table->string("file_path");

            $table->string("file_association");

            $table->foreignIdFor(Seller::class);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table("sellers", function (Blueprint $table) {

            $table->dropColumn("nin");

            $table->dropColumn("reg_level_completed");
        });

        Schema::dropIfExists("seller_credentials");
    }
}
