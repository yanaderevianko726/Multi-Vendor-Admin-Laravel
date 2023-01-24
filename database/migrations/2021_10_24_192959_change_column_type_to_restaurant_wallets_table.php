<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class ChangeColumnTypeToRestaurantWalletsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('restaurant_wallets', function (Blueprint $table) {
            $table->decimal('total_earning',$precision = 24, $scale = 2)->change();
            $table->decimal('total_withdrawn',$precision = 24, $scale = 2)->change();
            $table->decimal('pending_withdraw',$precision = 24, $scale = 2)->change();
            $table->decimal('collected_cash',$precision = 24, $scale = 2)->change();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('restaurant_wallets', function (Blueprint $table) {
            $table->decimal('total_earning',$precision = 8, $scale = 2)->change();
            $table->decimal('total_withdrawn',$precision = 8, $scale = 2)->change();
            $table->decimal('pending_withdraw',$precision = 8, $scale = 2)->change();
            $table->decimal('collected_cash',$precision = 8, $scale = 2)->change();
        });
    }
}
