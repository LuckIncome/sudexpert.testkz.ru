<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddIconMainPageToServiceTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('service', function (Blueprint $table) {
            $table->string('icon_main_page')->nullable();
            $table->string('title_main_page')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('service', function (Blueprint $table) {
            $table->string('icon_main_page')->nullable();
            $table->string('title_main_page')->nullable();
        });
    }
}
