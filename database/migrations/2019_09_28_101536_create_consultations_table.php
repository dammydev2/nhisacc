<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateConsultationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('consultations', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('rec');
            $table->string('name');
            $table->string('NHIS');
            $table->string('patient');
            $table->string('provider');
            $table->string('authorization');
            $table->string('HCP');
            $table->string('presentation');
            $table->string('admission');
            $table->string('discharge');
            $table->string('diagnosis');
            $table->string('phone');
            $table->string('code');
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
        Schema::dropIfExists('consultations');
    }
}
