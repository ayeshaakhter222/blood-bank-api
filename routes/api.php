<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\JwtAuthController;
use App\Http\Controllers\API\DonerController;
use App\Http\Controllers\API\DashboardController;
use App\Http\Controllers\API\DonationController;

Route::group(['middleware' => 'api'], function () {
    Route::post('/login', [JwtAuthController::class, 'login']);
    Route::post('/register', [JwtAuthController::class, 'register']);
    Route::get('/dashboard', [DashboardController::class, 'dashboard']);
    Route::post('add_donation', [DonationController::class, 'store']);

    Route::group(['middleware' => 'auth:api'], function (){
        Route::post('/logout', [JwtAuthController::class, 'logout']);
        Route::post('/refresh', [JwtAuthController::class, 'refresh']);
        Route::get('/me', [JwtAuthController::class, 'me']);
        Route::apiResource('/doners', DonerController::class);
    });
});
