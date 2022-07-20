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
        Schema::create('near_earth_objects_table_web_service', function (Blueprint $table) {
            $table->id();
            $table->date('date');
            $table->integer('reference');
            $table->char('referenced', 100);
            $table->char('name', 100);
            $table->float('speed', 15, 10);
            $table->boolean('is_hazardous');
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
        Schema::dropIfExists('near_earth_objects_table_web_service');
    }
};
