<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Donate;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class DashboardController extends Controller
{
    public function dashboard()
    {
        $donations = Donate::where('user_id', User::all()->first()->id)->get();

        return response()->json([
            'status' => true,
            'data' => $donations
        ], 200);
    }
}
