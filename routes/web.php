<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PagesController;



/* Route::get('/', function () {
    return view('welcome');
}); */


Route::get('/', [PagesController::class, 'index']);

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');


Route::resource('posts', 'App\Http\Controllers\PostsController');



