<?php

namespace App\Http\Controllers;

use App\Order;
use App\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class OrderControllerAPI extends Controller
{
    //
    public function store(Request $request){
        $order = new Order();
        $order->name = $request->name;
        $order->address = $request->address;
        $order->nif = $request->nif;
        $order->user_id = Auth::id();

        if (!$order->save()){
            return response()->json(["message" => "Could not create order"], 500);
        }


        foreach ($request->products as $product) {
            if(Product::find($product["id"])) {
                $order->products()->attach($product["id"], ['quantity' => $product["quantity"]]);
            }else
                return response()->json(["message" => "One of the products doesn't exist"], 500);
        }

        return response()->json(["message" => "Order created sucessfully"], 200);
    }
}
