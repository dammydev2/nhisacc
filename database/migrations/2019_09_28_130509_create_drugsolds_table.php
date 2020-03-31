<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDrugsoldsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('drugsolds', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('rec');
            $table->string('patient');
            $table->string('name');
            $table->string('qty');
            $table->string('price');
            $table->string('dosage');
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
        Schema::dropIfExists('drugsolds');
    }
}
