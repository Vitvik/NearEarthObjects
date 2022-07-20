<?php

namespace App\Http\Controllers;

use App\Models\nearEarthObjects;
use Illuminate\Http\Request;


class NearEarthObjectController extends Controller
{
    private function neo(){
        return new nearEarthObjects();
    }

    public function allNeos(){
        return  nearEarthObjects::all(); //fetch all neos from DB
    }

    public function hazardous(){
        $isHazardous = true;
        return $this->neo()->hazardous($isHazardous);
    }

    public function fastest(Request $request){
        $isHazardous = $request->get('hazardous');

        return $this->neo()->fastest($isHazardous);
    }



    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       //

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\nearEarthObjects  $nearEarthObjects
     * @return \Illuminate\Http\Response
     */
    public function show(nearEarthObjects $nearEarthObjects)
    {
       //
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\nearEarthObjects  $nearEarthObjects
     * @return \Illuminate\Http\Response
     */
    public function edit(nearEarthObjects $nearEarthObjects)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\nearEarthObjects  $nearEarthObjects
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, nearEarthObjects $nearEarthObjects)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\nearEarthObjects  $nearEarthObjects
     * @return \Illuminate\Http\Response
     */
    public function destroy(nearEarthObjects $nearEarthObjects)
    {
        //
    }
}
