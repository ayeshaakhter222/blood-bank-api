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
    Route::get('/get_districts', [DonerController::class, 'getDistricts']);
    Route::get('/get_blood_types', [DonerController::class, 'getBloodTypes']);
    Route::post('/search_donor', [DonerController::class, 'search']);

    Route::get('/count_blood_type', [DonerController::class, 'countBloodType']);
    Route::get('/count_donor', [DonerController::class, 'countDonor']);
    Route::get('/count_district', [DonerController::class, 'countDistrict']);

    Route::group(['middleware' => 'auth:api'], function (){
        Route::post('/logout', [JwtAuthController::class, 'logout']);
        Route::post('/refresh', [JwtAuthController::class, 'refresh']);
        Route::get('/me', [JwtAuthController::class, 'me']);
        Route::apiResource('/doners', DonerController::class);
        Route::post('add_donation', [DonationController::class, 'store']);
    });
});
