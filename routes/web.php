<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
/*
Route::get('/', function () {
    return view('welcome');
});
*/


Route::get('/', [\App\Http\Controllers\MacPawHelloController::class, 'index']);
Route::get('/neo', [\App\Http\Controllers\NearEarthObjectController::class, 'allNeos']);
Route::get('/neo/hazardous', [\App\Http\Controllers\NearEarthObjectController::class, 'hazardous']);
Route::get('/neo/fastest', [\App\Http\Controllers\NearEarthObjectController::class, 'fastest']);
Route::get('/neoWs', [\App\Http\Controllers\NearEarthObjectWebServiceController::class, 'neoWs']);
Route::get('/neoWs/{neoId}', [\App\Http\Controllers\NearEarthObjectWebServiceController::class, 'getOneNeo']);




