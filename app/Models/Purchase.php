<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Purchase extends Model
{
    //
      protected $table = "purchase";
    protected $fillable = [
        "purchase_id",
        "user_id", 
        "employeeSign", 
        "chiefAdminManagerSign", 
        "remarks", 
        "isClaimable", 
        "totalPrice"
    ];
     //image upload  
     public function filePath($file){
         $sign = $file->file('image');
         $path = null;
 
         if ($file) {
             $filename = $file->getClientOriginalName();
            return $path = $file->storeAs('upload', time() . '_' . $filename, 'public');
         }

     }
    // attachment or signature download
      public function downloadAttachment($filename)
    {
        $path = storage_path('app/public/upload/' . $filename);

        if (!file_exists($path)) {
            abort(404);
        }

        return response()->download($path);
    }
      // database relation ship 
     public function  item_purchase(){
        return $this->hasMany(ItemPurchase::class ,"purchase_id",'purchase_id'); 
    }
}
