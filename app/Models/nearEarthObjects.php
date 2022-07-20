<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;


class nearEarthObjects extends Model
{
    use HasFactory;


    public function isHazardous($isHazardous){
        return  $isHazardous == 'true' ? true : false;
   }

    public function hazardous($isHazardous){

        return DB::table('near_earth_objects')
            ->where('is_hazardous', $this->isHazardous($isHazardous))
            ->get();

    }

    public function fastest($isHazardous){

        return DB::table('near_earth_objects')
            ->where('is_hazardous', $this->isHazardous($isHazardous) )
            ->orderBy('speed', 'desc')
            ->get();
    }


}

