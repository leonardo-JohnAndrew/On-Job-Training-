<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Purchase as PurchaseModel;
use Illuminate\Http\Request;

class PurchaseController extends Controller
{
    //
    public function showPurchaseData(){
        try {
            //code...
            return PurchaseModel::with('item_purchase')->get(); 

        } catch (\Throwable $th) {
            throw $th;
        }
    }

    //purchase modification edit mode 
    public function editPurchase(Request $request){
      $request->validate([
            'purchase_Item_id' => "string|required", 
            'purchase_id' => "required", 
            'itemName' => "string", 
            'unit'=>"int", 
            'endingInventoryDate'=> "required|date|date_format:Y-m-d",
            'endingInventory' => "int", 
            'requiredBalance' => "int", 
            'quantity' => "int", 

            
           'employeeSign' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048', 
           'chiefAdminManagerSign' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048',
           'remarks'=> 'string', 
           'isClaimable' => "in:true,false", 
           'totalPrice' => "int"
        ]);

    }
}
