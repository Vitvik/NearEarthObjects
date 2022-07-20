<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MacPawHello extends Model
{
    use HasFactory;

    public static function macPawHello ( ){
        $array = array('hello' => 'MacPaw Internship 2022!');

        return json_encode($array);
    }
}
