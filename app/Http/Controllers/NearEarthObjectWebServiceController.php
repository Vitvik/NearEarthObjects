<?php

namespace App\Http\Controllers;

use App\Models\NeoWS;
use Illuminate\Support\Facades\Http;



class NearEarthObjectWebServiceController extends Controller
{
    protected function neoWebSer()
    {
        return new NeoWS();

    }
    public function getOneNeo($neoId){
       // return $this->neoWebSer()->getOneNeo($neoId);
        return view('neo.neo', [
            'rows' => $this->neoWebSer()->getOneNeo($neoId),
        ]);
    }
    public function NeoWS()
    {

        $end_date = date("Y-m-d");
        $start_date = date("Y-m-d", strtotime("-2 day", strtotime( $end_date)));
        $api_key = 'DEMO_KEY';

        $path = 'https://api.nasa.gov/neo/rest/v1/feed?'
            .'start_date='.$start_date
            .'&end_date='.$end_date
            .'&api_key='.$api_key;

        $data = json_decode(Http::get($path)->body(), true);
        $data_db= $this->neoWebSer()->getNeoData($data);
        $count_insert_row = $this->neoWebSer()->insertNeoData($data_db);

       // return  $this->neoWebSer()->elementCount($data, $count_insert_row);
        return
          view('neo.neows', [
            'data' => $this->neoWebSer()->getAllNeos(),
            'element_count' => $this->neoWebSer()->elementCount($data),
            'count_insert_row' => $count_insert_row
        ]);

    }

}
