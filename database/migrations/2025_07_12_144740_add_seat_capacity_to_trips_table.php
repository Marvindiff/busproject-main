<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
   public function up(): void
{
    Schema::table('trips', function (Blueprint $table) {
        $table->integer('seat_capacity')->default(0); // You can set the default value as needed
    });
}

public function down(): void
{
    Schema::table('trips', function (Blueprint $table) {
        $table->dropColumn('seat_capacity');
    });
}

};
