<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Role;

class PassportAuthController extends Controller
{
    public function register(Request $request)
    {
        try {
            $this->validate($request, [
                'first_name' => 'required|min:4',
                'gender' => 'required',
                'blood_type' => 'required',
                'birth_date' => 'required',
                'address' => 'required',
                'city' => 'required',
                'temperature' => 'required',
                'mobile' => 'required',
                'email' => 'required|email',
                'password' => 'required|min:6',
            ]);

            $user = User::create([
                'first_name' => $request->first_name,
                'last_name' => $request->last_name,
                'gender' => $request->gender,
                'blood_type' => $request->blood_type,
                'birth_date' => $request->birth_date,
                'address' => $request->address,
                'city' => $request->city,
                'temperature' => $request->temperature,
                'pulse' => $request->pulse,
                'bp' => $request->bp,
                'weight' => $request->weight,
                'hemoglobin' => $request->hemoglobin,
                'mobile' => $request->mobile,
                'email' => $request->email,
                'password' => bcrypt($request->password),
            ]);

            $role = Role::find(2);
            $user->roles()->attach($role);

            $token = $user->createToken('BloodBank')->accessToken;

            return response()->json([
                'token' => $token,
                'message' => 'Registration Completed.',
            ], 200);
        } catch (\Exception $e) {
            return response()->json([
                'message' => 'Error.',
            ], 400);
        }
    }

    public function login(Request $request)
    {
        $data = [
            'email' => $request->email,
            'password' => $request->password
        ];

        if (auth()->attempt($data)) {
            $token = auth()->user()->createToken('BloodBank')->accessToken;
            return response()->json(['token' => $token], 200);
        } else {
            return response()->json(['error' => 'Your username/password is not correct.'], 401);
        }
    }
}
