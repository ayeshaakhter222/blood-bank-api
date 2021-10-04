<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\JwtAuthController;
use App\Http\Controllers\API\DonerController;

Route::group(['middleware' => 'api'], function () {
    Route::post('/login', [JwtAuthController::class, 'login']);
    Route::post('/register', [JwtAuthController::class, 'register']);

    Route::group(['middleware' => 'auth:api'], function (){
        Route::post('/logout', [JwtAuthController::class, 'logout']);
        Route::post('/refresh', [JwtAuthController::class, 'refresh']);
        Route::get('/me', [JwtAuthController::class, 'me']);
        Route::apiResource('/doners', DonerController::class);
        Route::get('latest-doner-list', function() {
        	$doners = \App\Models\User::limit(5)->get();
        	return response()->json([
        		'doners' => $doners
        	]);
        });
    });
});