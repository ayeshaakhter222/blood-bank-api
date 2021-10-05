<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Donate;
use Illuminate\Http\Request;

class DonationController extends Controller
{
    public function index()
    {
        //
    }

    public function store(Request $request)
    {
        try {
            $data = $request->all();
            $data['user_id'] = 9;

            Donate::create($data);

            return response()->json([
                'status' => true,
                'message' => 'Donation added successfully'
            ], 200);
        } catch (\Exception $exception) {
            return response()->json([
                'status' => false,
                'message' => 'Something went wrong, please try again'
            ], 200);
        }
    }
}
