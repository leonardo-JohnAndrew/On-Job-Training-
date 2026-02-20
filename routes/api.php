<?php

use App\Http\Controllers\PurchaseController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


// middleware 
Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

//purchaseController 
Route::get('/showAllPurchases',[PurchaseController::class, 'showPurchaseData']); 