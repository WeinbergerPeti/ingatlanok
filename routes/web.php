<?php

use App\Http\Controllers\IngatlanokController;
use App\Http\Controllers\KategoriakController;
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

Route::get('/', function () {
    return view('index');
});
//KategoriakController
Route::get('/kategoriaks', [KategoriakController::class, 'index']);
Route::get('/kategoria/{id}', [KategoriakController::class, 'show']);
Route::delete('/kategoriaks/{id}', [KategoriakController::class, 'destroy']);
Route::post('/kategoriaks', [KategoriakController::class, 'store']);
Route::put('/kategoriaks/{id}', [KategoriakController::class, 'update']);

//KategoriakController
Route::get('/ingatlanoks', [IngatlanokController::class, 'index']);
Route::get('/ingatlan/{id}', [IngatlanokController::class, 'show']);
Route::delete('/ingatlanoks/{id}', [IngatlanokController::class, 'destroy']);
Route::post('/ingatlanoks', [IngatlanokController::class, 'store']);
Route::put('/ingatlanoks/{id}', [IngatlanokController::class, 'update']);
