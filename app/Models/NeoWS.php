<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
const TABLE_NEO_WS= 'near_earth_objects_table_web_service';


class NeoWS extends Model
{
    use HasFactory;


    public function getNeoData($data ){
        $db_data = array();
        $count = 0;

        foreach ($data['near_earth_objects'] as $day) {
            foreach ( $day as $neo) {

                $db_data[$count] = array();
                $db_data[$count]['date']= $neo['close_approach_data'][0]['close_approach_date'];
                $db_data[$count]['is_hazardous'] = $neo['is_potentially_hazardous_asteroid'];
                $db_data[$count]['name'] =  $neo['name'];
                $db_data[$count]['reference'] = $neo['neo_reference_id'];
                $db_data[$count]['referenced'] = $neo['nasa_jpl_url'];
                $db_data[$count]['speed']= $neo['close_approach_data'][0]['relative_velocity']['kilometers_per_hour'];

                $count ++;
            }
        }
    return $db_data;
    }

    public function insertNeoData($db_data){
        $data = $this->dropDuplicate($db_data);
        DB::table(TABLE_NEO_WS)->insert($data);
        return count($data);
    }
    public function dropDuplicate($db_data){

        $allRecords = DB::table(TABLE_NEO_WS)->select('reference')->get()->toArray();
        for($i = 0; $i < count($db_data); $i++){
            if ($this->searchForId($db_data[$i]['reference'], $allRecords)) {
                unset($db_data[$i]);
            }
        }

        return $db_data;
    }

    function searchForId($id, $array) {
        foreach ($array as $val) {
            if ($id == $val->reference) {
                return true;
            }
        }
        return null;
    }

    public function getAllNeos(){
        return DB::table(TABLE_NEO_WS)->paginate(10);
    }

    public function  getOneNeo($id){
        return DB::table(TABLE_NEO_WS)
            ->where('reference', $id)
            ->get();
    }

    public function elementCount($data){
        return $data['element_count'];
    }



}
