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
        Schema::create('bookstorecomments', function (Blueprint $table) {
            $table->id();
            $table->string('Review');

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
        Schema::dropIfExists('bookstorecomments');
    }
};
