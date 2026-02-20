<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ItemPurchase extends Model
{
    //
    use HasFactory; 

    protected $table = "purchaseItems";
    protected $fillable = [
        "purchase_Item_id",
        "purchase_id",
        "itemName", 
        "unit", 
        "endingInventory", 
        "endingInventoryDate", 
        "requiredBalance", 
        "quantity"
    ];

    //databaseRelationShip 
    public function purchase(){
        return $this->belongTo(Purchase::class ,"purchase_id",'purchase_id'); 
    }
}
