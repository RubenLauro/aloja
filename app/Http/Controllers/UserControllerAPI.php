<?php

namespace App\Http\Controllers;

use App\Http\Resources\UserResource;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UserControllerAPI extends Controller
{
    public function me() {
        return new UserResource(Auth::user());
    }
}
