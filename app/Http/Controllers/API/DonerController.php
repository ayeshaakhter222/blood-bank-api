<?php

namespace App\Http\Controllers\API;



use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\BloodType;
use App\Models\District;

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

    public function search(Request $request)
    {
        $bloodType = $request->get('blood_type');
        $districtId = $request->get('district_id');
        $date = $request->get('date');
        $results = [];

        if ($bloodType && $districtId && $date) {
            $previousDate = \Carbon\Carbon::parse($date)->subDays(60);

            $donors = User::where('blood_type', $bloodType)
                    ->where('district_id', $districtId)
                    ->get();

            foreach($donors as $donor) {
                $lastDonation = $donor->donations()->orderBy('donation_date', 'desc')->first();

                if ($lastDonation < $date) {
                    $results[] = $donor;
                }
            }

            return response()->json([
                'status' => true,
                'data' => $results
            ], 200);

        } else {
            return response()->json([
                'status' => false,
                'message' => 'Please select all required parameters.'
            ], 200);
        }
    }

    public function countBloodType()
    {
        $count = 0;
        $donors = User::all()->groupBy('blood_type');

        foreach ($donors as $key => $donor) {
            if ($key) {
                $count++;
            }
        }

        return response()->json([
            'status' => true,
            'count' => $count
        ], 200);
    }

    public function countDonor()
    {
        $count = User::whereHas('roles', function($q){
            $q->where('role_id', 2);
        })
        ->count();

        return response()->json([
            'status' => true,
            'count' => $count
        ], 200);
    }

    public function countDistrict()
    {
        $count = District::all()->count();

        return response()->json([
            'status' => true,
            'count' => $count
        ], 200);
    }

    public function getDistricts()
    {
        $districts = District::all();
        return response()->json([
            'status' => true,
            'data' => $districts
        ]);
    }

    public function getBloodTypes()
    {
        $bloodTypes = BloodType::all();
        return response()->json([
            'status' => true,
            'data' => $bloodTypes
        ]);
    }
}
