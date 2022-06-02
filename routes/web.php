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

Route::get('/', function () {
    return view('welcome');
});

Route::get('/showToken', [BookController::class, 'showToken']);

Route::get('/Book/{id}', function () {
    return view('welcome');
});
Route::get('/BookScreen/{id}', function () {
    return view('welcome');
});
/* 
Route::get('/Home', function () {
    return view('welcome');
});

Route::get('/LoginForm', function () {
    return view('welcome');
});

Route::get('/HomeUser', function () {
    return view('welcome');
});

Route::get('/CBooks', function () {
    return view('welcome');
});

Route::get('/Register', function () {
    return view('welcome');
}); */
/* 
Route::get('/UpdateShow/{id}', function () {
    return view('welcome');
});

Route::get('/Show/{id}', function () {
    return view('welcome');
});

Route::get('/ShowsPage', function () {
    return view('welcome');
});

Route::get('/Stats', function () {
    return view('welcome');
});

Route::get('/RegisterForm', function () {
    return view('welcome');
});

Route::get('/Admin', function () {
    return view('welcome');
});

Route::get('/SalesTable', function () {
    return view('welcome');
});

Route::get('/EditShows', function () {
    return view('welcome');
}); */