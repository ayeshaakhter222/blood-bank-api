<?php

namespace App\Http\Controllers\API;



use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;

class DonerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $doners = User::all()->toArray();
        return response()->json([
            'doners' => $doners
        ], 200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $inputs = $request->all();

        $validator = Validator::make($inputs, [
            'first_name' => 'required|min:4',
            'gender' => 'required',
            'blood_type' => 'required',
            'birth_date' => 'required',
            'address' => 'required',
            'city' => 'required',
            'temperature' => 'required',
            'mobile' => 'required',
            'email' => 'required|email|unique:users',
            'password' => 'required|min:6',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors()->toJson(), 400);
        }

        $inputs['password'] = bcrypt($request->password);

        $user = User::create($inputs);

        $user->roles()->attach(2);

        return response()->json([
            'message' => 'Doner successfuly added.',
            'user' => $user
        ], 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $doner = User::find($id);
        return response()->json([
            'doner' => $doner
        ], 200);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $doner = User::find($id);
        $updateDoner = tap($doner)->update($request->all());

        if ($updateDoner) {
            return response()->json([
                'doner' => $updateDoner
            ], 200);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $doner = User::find($id);
        $doner->delete();

        return response()->json([
            'status' => true
        ], 200);
    }
}
