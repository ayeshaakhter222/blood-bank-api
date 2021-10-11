<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('first_name');
            $table->string('last_name')->nullable();
            $table->string('email')->unique();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->char('gender')->nullable(); // M,F
            $table->unsignedBigInteger('blood_type')->nullable();
            $table->date('birth_date')->nullable();
            $table->text('address')->nullable();
            $table->unsignedBigInteger('district_id')->nullable();
            $table->integer('temperature')->nullable();
            $table->string('pulse', 20)->nullable();
            $table->string('bp', 20)->nullable();
            $table->integer('weight')->nullable();
            $table->string('hemoglobin')->nullable();
            $table->string('mobile')->nullable();
            $table->rememberToken();
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
        Schema::dropIfExists('users');
    }
}
