<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('bookstores', function (Blueprint $table) {
            $table->id();
            $table->string('Name');
            $table->string('Mandated');
            $table->string('Address');
            $table->string('City');
            $table->integer('Phone');
            $table->string('Mail');
            $table->string('Web');
            $table->string('Review');
            $table->string('Image');
            
            $table->foreignId('user_id')->references('id')->on('users')->onDelete('cascade');
            $table->timestamps(false);


        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('bookstores');
    }
};
