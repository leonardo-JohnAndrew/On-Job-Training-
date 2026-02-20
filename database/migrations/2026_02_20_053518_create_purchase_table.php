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
        Schema::create('purchase', function (Blueprint $table) {
            $table->string('purchase_id')->unique()->nullable();
            $table->string('user_id')->nullable();  //foreign key 
            $table->string('employeeSign')->nullable();
            $table->string('chiefAdminManagerSign')->nullable();
            $table->string('remarks')->nullable();
            $table->boolean('isClaimable')->default(false); 
            $table->integer("totalPrice")->nullable(); 
        });

        Schema::create('purchaseItems', function (Blueprint $table) {
            $table->id('purchase_Item_id');
            $table->string("purchase_id"); 
           $table->foreign('purchase_id')->references('purchase_id')->on('purchase')->cascadeOnUpdate()->cascadeOnDelete();  //foreign key 
            $table->string('itemName')->nullable();
            $table->enum("unit" , ['bxs','can', 'pcks', 'kilo','btls','pcs'])->nullable();
            $table->date("endingInventoryDate")->nullable(); 
            $table->integer("endingInventory")->nullable(); 
            $table->integer("requiredBalance")->nullable(); 
            $table->integer("quantity")->nullable(); 
           
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('purchase');
        Schema::dropIfExists('purchaseItems'); 
    }
};
