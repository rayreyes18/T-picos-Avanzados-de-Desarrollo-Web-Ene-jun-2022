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
        Schema::create('books', function (Blueprint $table) {
            $table->id();
            $table->string('Tittle');
            $table->string('Genre');
            $table->string('Editorial');
            $table->integer('Price');
            $table->string('Author');
            $table->integer('Reading_age');
            $table->string('Format');
            $table->string('Review');
            $table->integer('Score');
            $table->string('Image');

            $table->foreignId('user_id')->references('id')
            ->on('users')
            ->onDelete('cascade');

            $table->foreignId('bookstore_id')->references('id')
            ->on('bookstores')
            ->onDelete('cascade');

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
        Schema::dropIfExists('books');
    }
};
