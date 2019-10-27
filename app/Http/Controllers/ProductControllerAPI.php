<?php

namespace App\Http\Controllers;

use App\Http\Resources\ProductResource;
use App\Product;
use Illuminate\Http\Request;

class ProductControllerAPI extends Controller
{
    //
    public function getProducts(){
        return ProductResource::collection(Product::all());
    }
}
