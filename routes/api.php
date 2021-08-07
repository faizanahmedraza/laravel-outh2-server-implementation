<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

Route::middleware(['auth:api','scopes:get-email'])->get('/user', function (Request $request) {
    return $request->user()->makeVisible([
        'email'
    ]);
});

Route::middleware(['auth:api','scopes:create-posts'])->post('/posts/create',function (Request $request){
    return $request->user()->posts()->create($request->only(['title','description']));
});

Route::get('/posts', function () {
    return \App\Models\Post::with('user')->get();
});
