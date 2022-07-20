<?php

namespace App\Http\Controllers;

use App\Models\MacPawHello;
use Illuminate\Http\Request;

class MacPawHelloController extends Controller
{
    public function index()
    {
        return MacPawHello::macPawHello();

    }
}
