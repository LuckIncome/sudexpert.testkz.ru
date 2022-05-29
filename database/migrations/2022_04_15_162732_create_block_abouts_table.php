<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBlockAboutsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('block_abouts', function (Blueprint $table) {
            $table->id();
            $table->string('icon')->nullable();
            $table->string('first_title')->nullable();
            $table->string('second_title')->nullable();
            $table->text('subtitle')->nullable();
            $table->string('first_image')->nullable();
            $table->string('first_alt_image')->nullable();
            $table->string('second_image')->nullable();
            $table->string('second_alt_image')->nullable();
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
        Schema::dropIfExists('block_abouts');
    }
}
