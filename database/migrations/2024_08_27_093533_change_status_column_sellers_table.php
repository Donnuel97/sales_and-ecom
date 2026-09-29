<?php

use Illuminate\Database\Migrations\Migration;

use Illuminate\Support\Facades\{Schema, Blueprint, DB};

use App\Model\Seller;

class ChangeStatusColumnSellersTable extends Migration
{
    protected $statusStates = [

        Seller::STATUS_PENDING, Seller::STATUS_SUSPENDED,

        Seller::STATUS_APPROVED_1, Seller::STATUS_APPROVED_2,

        Seller::STATUS_REJECTED
    ];
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        $statesString = "";

        foreach ($this->statusStates as $state)

            $statesString .= "'$state',";

        $statesString = rtrim($statesString, ",");

        DB::statement("ALTER TABLE sellers MODIFY COLUMN status ENUM($statesString) DEFAULT '". $this->statusStates[0]. "'"); // eloquent can't handle enum tables correctly and dropping column will result in loss of data
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        DB::statement("ALTER TABLE sellers CHANGE COLUMN status status VARCHAR(255) DEFAULT '". $this->statusStates[0]. "'");
    }
}
