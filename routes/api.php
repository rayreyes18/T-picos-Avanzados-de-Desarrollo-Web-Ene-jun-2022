<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PassportAuthController;
use App\Http\Controllers\BookController;
use App\Http\Controllers\BookreviewController;
use App\Http\Controllers\BookstorecommentController;
use App\Http\Controllers\BookstoreController;
use App\Http\Controllers\BookstoreUserController;
use App\Http\Controllers\Controller;
use App\Http\Controllers\UserBookController;
use App\Http\Controllers\UserController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::post('register', [PassportAuthController::class, 'register']);
Route::post('login', [PassportAuthController::class, 'login']);
Route::get('authenticated', [PassportAuthController::class, 'authenticated']);

Route::post('authenticated', [PassportAuthController::class, 'authenticated']);



//Route::post('register', [AdministratorController::class, 'register']);
//Route::post('login', [AdministratorController::class, 'login']);

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

//RUTAS DE USER
Route::get('/users', [UserController::class, 'index']);
Route::post('/userStore', [UserController::class, 'store']);
Route::post('/userUpdate', [UserController::class, 'update']);
Route::get('/userSearch', [UserController::class, 'show']);
Route::get('/getUsers', [BookstoreController::class, 'getUsers']);
Route::post('/userDelete', [UserController::class, 'destroy']);

//RUTAS DE BOOK
Route::get('/books', [BookController::class, 'index']);
Route::post('/bookStore', [BookController::class, 'store']);
Route::post('/bookUpdate', [BookController::class, 'update']);
Route::get('/bookSearch', [BookController::class, 'show']);
Route::post('/bookDelete', [BookController::class, 'destroy']);

//RUTAS DE BOOKREVIEW
Route::get('/bookreviews', [BookreviewController::class, 'index']);
Route::post('/bookreviewStore', [BookreviewController::class, 'store']);
Route::get('/bookreviewSearch', [BookreviewController::class, 'show']);
Route::post('/bookreviewUpdate', [BookreviewController::class, 'update']);
Route::post('/bookreviewDelete', [BookreviewController::class, 'destroy']);

//RUTAS DE BOOKSTORECOMMENT
Route::get('/bookstorecomments', [BookstorecommentController::class, 'index']);
Route::post('/bookstorecommentStore', [BookstorecommentController::class, 'store']);
Route::get('/bookstoreSearch', [BookreviewController::class, 'show']);
Route::post('/bookstorecommentUpdate', [BookstorecommentController::class, 'update']);
Route::post('/bookstorecommentDelete', [BookstorecommentController::class, 'destroy']);

//RUTAS DE BOOKSTORE
Route::get('/bookstores', [BookstoreController::class, 'index']);
Route::post('/bookstoreStore', [BookstoreController::class, 'store']);
Route::post('/bookstoreUpdate', [BookstoreController::class, 'update']);
Route::get('/bookstoreSearch', [BookstoreController::class, 'show']);
Route::post('/bookstoreDelete', [BookstoreController::class, 'destroy']);

//RUTAS DE BOOKSTOREUSER
Route::get('/bookstoresusers', [BookstoreUserController::class, 'index']);
Route::post('/bookstoreuserStore', [BookstoreUserController::class, 'store']);
Route::post('/bookstoreuserSearch', [BookstoreUserController::class, 'show']);

//RUTAS DE USERBOOK
Route::get('/usersbooks', [UserBookController::class, 'index']);
Route::post('/userbookStore', [UserBookController::class, 'store']);
Route::post('/userbookSearch', [UserBookController::class, 'show']);

