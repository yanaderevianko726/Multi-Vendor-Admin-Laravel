<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateReservationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('reservations', function (Blueprint $table) {
            $table->id();
            $table->foreignId('vendor_id');
            $table->foreignId('chef_id');
            $table->foreignId('customer_id');
            $table->foreignId('order_id');
            $table->foreignId('table_id');
            $table->bigInteger('number_in_party')->nullable();
            $table->string('table_name', 50);
            $table->string('venue_name', 50);
            $table->string('chef_name', 50);
            $table->string('customer_name', 50);
            $table->string('customer_email', 50);
            $table->string('venue_address', 100);
            $table->string('specialNotes', 50);
            $table->string('description', 255);
            $table->string('reserveDate', 50);
            $table->string('placedDate', 50);
            $table->bigInteger('duration')->nullable();
            $table->integer('paymentMethod')->nullable();
            $table->decimal('price')->default(0);
            $table->decimal('venue_latitude')->default(0);
            $table->decimal('venue_longitude')->default(0);
            $table->boolean('status')->default(1);
            $table->boolean('reserve_status')->default(1);
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
        Schema::dropIfExists('reservations');
    }
}
