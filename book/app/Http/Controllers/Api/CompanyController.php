<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\PaymentMethod;
use Auth;
use App\Models\Vehicle;
use App\Models\Trips;
use App\Models\User;
use App\Models\Rating;
use App\Models\Company;
use App\Models\DriverLocation;
use DB;
use Tymon\JWTAuth\Facades\JWTAuth;
use Tymon\JWTAuth\Exceptions\JWTException;

class CompanyController extends Controller
{
    public function dashboard(Request $request){

        $auth_id = Auth::user()->id;
        $company_id = Company::where('user_id',$auth_id)->first()->id;
        //return $company_id;
        $company['active_tab'] = Vehicle::where('company_id',$company_id)->where('is_active',1)->count();
        $company['Inactive_tab'] = Vehicle::where('company_id',$company_id)->where('is_active',0)->count();
        $trips = Trips::leftJoin('users', 'users.id', '=', 'trips.driver_id')
                ->where('users.company_id', $company_id)
                ->where('trips.payment_status', 'Completed')
                ->get();
        $total_earnings = $trips->sum(function($trip) {
                            return $trip->driver_or_company_earning; // Computed or accessor field
                            });
        $cash = $trips->where('payment_mode','Cash')->sum(function($trip){
            return $trip->driver_or_company_earning;
        });
         $online = $trips->where('payment_mode','Online')->sum(function($trip){
            return $trip->driver_or_company_earning;
        });
        $company['total_earnings'] = $total_earnings;
        $company['cash'] = $cash;
        $company['online'] = $online;
    //  $car_details = Vehicle::leftJoin('vehicle_make', 'vehicle_make.id', '=', 'vehicle.vehicle_make_id')
    // ->leftJoin('vehicle_model', 'vehicle_model.id', '=', 'vehicle.vehicle_model_id')
    // ->leftJoin('trips', 'trips.car_id', '=', 'vehicle.vehicle_id')
    // ->leftJoin('users', 'users.id', '=', 'trips.driver_id')
    // ->where('vehicle.company_id', $company_id)
    // ->where('users.company_id', $company_id)
    // ->select('vehicle.*', 'vehicle_make.make_vehicle_name', 'vehicle_model.model_name', DB::raw('COUNT(trips.id) as booking'))
    // ->groupBy('vehicle.vehicle_id', 'vehicle_make.make_vehicle_name', 'vehicle_model.model_name', 'users.id') // Added 'users.id' to group by driver
    // ->get();
    $car_details = Vehicle::with('user','car_type','make','model')->where('company_id',$company_id)->get();
    foreach($car_details as $key => $car){
        $car_details[$key]['booking'] = Trips::where('car_id',$car['car_type']->id)->where('driver_id',$car['user']->id)->count('id');
    }
    $driver_details = Vehicle::with('user','car_type','make','model')->where('company_id',$company_id)->get();
    //return $driver_details;
    if(!empty($driver_details)){
    foreach($driver_details as $key => $car){
        $driver_details[$key]['booking'] = Trips::where('driver_id',$car['user']->id)->count('id');
        $rating = Rating::where('driver_id', $car['user']->id)->avg('driver_rating');
        $driver_details[$key]['rating'] = number_format($rating,1);
    }
    }
    $company['car_details'] = $car_details;
    $company['driver_details'] = $driver_details;


	return response()->json([
			'status_code' => '200',
			'status_message' => "fetched successfully",
			'dashboard' => $company
		]);
    }
  public function car_details($id) {
    // Fetch the car details with related data
    $car_details = Vehicle::with('make','model')->where('id', $id)
                    ->first();

    // Check if car details were found
    if (!$car_details) {
        return response()->json([
            'status_code' => 404,
            'status_message' => 'Car not found',
        ]);
    }
//return $car_details;
    // Add booking count
    $car_details['booking'] = Trips::where('car_id', $car_details->vehicle_id)
                                    ->count();
    $trips = Trips::where('car_id',$car_details->vehicle_id)->where('status','Completed')->get();
    $total_hours = $trips->sum('total_time');
   $decimalHours = $total_hours / 60; // 761 / 60 = 12.6833

// Round to 2 decimal places
$decimalHours = round($decimalHours, 2);
    $car_details['total_hours'] = $decimalHours;
    $car_details['average_hrs'] = $decimalHours/24;
    $car_details['total_amount'] = $trips->sum('total_fare');
    $car_details['total_km'] = $trips->sum('total_km');

    return response()->json([
        'status_code' => 200,
        'status_message' => 'Fetched successfully',
        'car_details' => $car_details,
    ]);
}
public function driver_details($id){
     $driver_details = Vehicle::with('user','make','model')->where('user_id',$id)->get();
  //  return $driver_details;
     foreach($driver_details as $key => $car){
        $driver_details[$key]['booking'] = Trips::where('driver_id',$car->user_id)->count('id');
         $rating = Rating::where('driver_id', $car->user_id)->avg('driver_rating');
        // return $rating;
        $driver_details[$key]['rating'] = number_format($rating,1);
        $driver_details[$key]['completed_trips'] = Trips::where('driver_id',$car->user_id)->where('status','Completed')->count('id');
        $driver_details[$key]['login_hours'] = DriverLocation::Where('user_id',$car->user_id)->first()->total_hour;
        $driver_details[$key]['peak_amount'] = Trips::where('driver_id',$car->user_id)->where('status','Completed')->sum('driver_peak_amount');
    }
     return response()->json([
        'status_code' => 200,
        'status_message' => 'Fetched successfully',
        'driver_details' => $driver_details,
    ]);
}


}
