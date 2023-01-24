<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFoodOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('food_orders', function (Blueprint $table) {
            $table->id();
            $table->string('order_number');
            $table->integer('order_status');
            $table->string('order_date', 50);
            $table->string('food_ids', 255);
            $table->string('special_instruction', 255);
            $table->integer('voucher_available')->nullable();
            $table->integer('server_tip')->nullable();
            $table->integer('server_tip_method')->nullable();
            $table->decimal('sub_total')->default(0);
            $table->decimal('tax')->default(0);
            $table->decimal('service_charge')->default(0);
            $table->decimal('total')->default(0);
            $table->integer('promo')->default(1);
            $table->integer('payment_method')->default(0);
            $table->integer('status')->default(1);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('food_orders');
    }
}
