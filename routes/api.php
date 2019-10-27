<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::post('login', 'LoginControllerAPI@login');

Route::get('products', 'ProductControllerAPI@getProducts');

Route::group(['middleware' => ['auth:api']], function () {
    Route::post('logout', 'LoginControllerAPI@logout');

    Route::post('orders', 'OrderControllerAPI@store');

    Route::get('me', 'UserControllerAPI@me');
});





