<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
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
    return view('welcome');
});

Route::post('property', [HomeController::class, 'store']);
Route::get('properties', [HomeController::class, 'index']);
Route::get('property/{id}', [HomeController::class, 'show']);
Route::get('/properties', [HomeController::class, 'index'])->name('properties.index');
Route::delete('/properties/{id}', [HomeController::class, 'destroy'])->name('properties.destroy');
Route::post('/properties', [HomeController::class, 'store'])->name('properties.store');