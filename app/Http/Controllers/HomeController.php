<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\DrugCategory;
use App\Drug;
use App\Service;
use App\Patient;
use App\Consultation;
use App\Description;
use App\Drugsold;
use App\Service_charge;
use App\Month;
use App\UserLogin;
use Session;
use DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
      $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      return view('home');
    }

    public function drug()
    {
      $data = DB::table('drugs')->orderBy('id', 'asc')->paginate(50);
      return view('drug', compact('data'));
    }

    function fetch_data(Request $request)
    {
     if($request->ajax())
     {
      $sort_by = $request->get('sortby');
      $sort_type = $request->get('sorttype');
      $query = $request->get('query');
      $query = str_replace(" ", "%", $query);
      $data = DB::table('drugs')
      ->where('id', 'like', '%'.$query.'%')
      ->orWhere('name', 'like', '%'.$query.'%')
      ->orWhere('category', 'like', '%'.$query.'%')
      ->orderBy($sort_by, $sort_type)
      ->paginate(5);
      return view('pagination_data', compact('data'))->render();
    }
  }

  public function add_drug()
  {
    $data = DrugCategory::all();
    return view('add_drug', compact('data'));
  }

  public function add_category()
  {
    return view('add_category');
  }

  public function entercategory(Request $request)
  {
    $request->validate([
      'name' => 'required|unique:drug_categories'
    ]);
    DrugCategory::create([
      'name' => $request['name']
    ]);
    Session::flash('success', 'category added successfully');
    return redirect('add_drug');
  }

  public function enterdrug(Request $request)
  {
    Drug::create([
      'category' => $request['category'],
      'name' => $request['name'],
      'dosage' => $request['dosage'],
      'strength' => $request['strength'],
      'presentation' => $request['presentation'],
      'price' => $request['price'],
    ]);
    Session::flash('success', 'drug added successfully');
    //return redirect('drug');
    return redirect()->back()->with('success', 'drug added successfully');
  }

  public function edit_drug($id){
    $data = Drug::where('id', $id)->get();
    return view('edit_drug', compact('data'));
  }

  public function updatedrug(Request $request){
    Drug::where('id', $request['id'])
    ->update([
      'category' => $request['category'],
      'name' => $request['name'],
      'dosage' => $request['dosage'],
      'strength' => $request['strength'],
      'presentation' => $request['presentation'],
      'price' => $request['price'],
    ]);
    Session::flash('success', 'drug updated successfully');
    return redirect('drug');
  }

  public function drugdelete($id)
  {
    Drug::where('id', $id)->delete();
    Session::flash('error', 'drug deleted successfully');
    return redirect('drug');
  }

  public function service()
  {
    $data = DB::table('services')->orderBy('NHIS_code', 'asc')->paginate(50);
    return view('service', compact('data'));
  }

  public function addservice()
  {
    return view('addservice');
  }

  public function enterservice(Request $request)
  {
    //return $request;
    Service::create([
      'NHIS_code' => $request['NHIS_code'],
      'price' => $request['price'],
      'description' => $request['description'],
      'type' => $request['type']
    ]);
    Session::flash('success', 'service added successfully');
    //return redirect('service');
    return redirect()->back()->with('success', 'service added successfully');
  }

  function fetch_service(Request $request)
  {
   if($request->ajax())
   {
    $sort_by = $request->get('sortby');
    $sort_type = $request->get('sorttype');
    $query = $request->get('query');
    $query = str_replace(" ", "%", $query);
    $data = DB::table('services')
    ->where('id', 'like', '%'.$query.'%')
    ->orWhere('NHIS_code', 'like', '%'.$query.'%')
    ->orWhere('description', 'like', '%'.$query.'%')
    ->orWhere('price', 'like', '%'.$query.'%')
    ->orderBy($sort_by, $sort_type)
    ->paginate(5);
    return view('pagination_data2', compact('data'))->render();
  }
}

public function editservice($id){
  $data = Service::where('id', $id)->get();
  return view('editservice', compact('data'));
}

public function updateservice(Request $request)
{
  Service::where('id', $request['id'])
  ->update([
    'NHIS_code' => $request['NHIS_code'],
    'price' => $request['price'],
    'description' => $request['description'],
  ]);
  Session::flash('success', 'service updated successfully');
  return redirect('service');
}

public function servicedelete($id)
{
  Service::where('id', $id)->delete();
  Session::flash('error', 'service deleted successfully');
  return redirect('service');
}

public function consultation(Request $request)
{
  $data = Patient::all();
  return view('consultation', compact('data'));
}

public function enterconsultation(Request $request)
{
  $rec = rand();
  Consultation::create([
    'name' => $request['name'],
    'NHIS' => $request['NHIS'],
    'patient' => $request['patient'],
    'provider' => $request['provider'],
    'authorization' => $request['authorization'],
    'HCP' => $request['HCP'],
    'presentation' => $request['presentation'],
    'admission' => $request['admission'],
    'discharge' => $request['discharge'],
    'diagnosis' => $request['diagnosis'],
    'phone' => $request['phone'],
    'code' => $request['code'],
    'rec' => $rec,
  ]);
  Session::put('rec', $rec);
  Session::put('patient', $request['patient']);
  Session::put('authorization', $request['authorization']);
  return redirect('first');
}

public function first()
{
  return view('first');
}

public function enterfirst(Request $request)
{
  $num = count($_POST['day']);
  for ($i=0; $i < $num; $i++) { 
    Description::create([
      'rec' => $request['rec'],
      'patient' => $request['patient'],
      'details' => $request['nm'][$i],
      'days' => $request['day'][$i],
      'amount' => $request['amount'][$i],
    ]); 
  }
  return redirect('prescription');
}

public function prescription()
{
  $data = DrugCategory::all();
  return view('prescription', compact('data'));
}

public function action(Request $request)
{
 if($request->ajax())
 {
  $output = '';
  $query = $request->get('query');
  if($query != '')
  {
   $data = Drug::where('name', 'like', '%'.$query.'%')
     //->orWhere('name', 'like', '%'.$query.'%')
        /** ->orWhere('City', 'like', '%'.$query.'%')
         ->orWhere('PostalCode', 'like', '%'.$query.'%')
         ->orWhere('Country', 'like', '%'.$query.'%')**/
         ->orderBy('id', 'desc')
         ->get();
         
       }
       else
       {
         $data = DB::table('tbl_customer')
         ->orderBy('CustomerID', 'desc')
         ->get();
       }
       $total_row = $data->count();
       if($total_row > 0)
       {
         foreach($data as $row)
         {
          $output .= '
          <div class="col-sm-12 rst"
          data-price = "'.$row->price.'"
          data-name = "'.$row->name.'"
          data-dosage = "'.$row->dosage.'"
          data-id = "'.$row->id.'"
          style="cursor:pointer;"
          >'.$row->name.' ('. $row->category.' '. $row->dosage.' '. $row->strength.')</div>';
        }
      }
      else
      {
       $output = '
       <tr>
       <td align="center" colspan="5">No Data Found</td>
       </tr>
       ';
     }
     $data = array(
       'table_data'  => $output,
       'total_data'  => $total_row
     );

     echo json_encode($data);
   }
 }

 public function sale_enter(Request $request)
 {
  $num = count($_POST['name']);
  for ($i=0; $i < $num; $i++) { 
    Drugsold::create([
      'rec' => $request['rec'],
      'patient' => $request['patient'],
      'name' => $request['name'][$i],
      'qty' => $request['qty'][$i],
      'price' => $request['price'][$i],
      'dosage' => $request['dosage'][$i],
    ]);
  }
  return redirect('patientservice');
}

public function patientservice()
{
  return view('patientservice');
}

public function action2(Request $request)
{
 if($request->ajax())
 {
  $output = '';
  $query = $request->get('query');
  if($query != '')
  {
   $data = Service::where('NHIS_code', 'like', '%'.$query.'%')
   ->orWhere('description', 'like', '%'.$query.'%')
        /** ->orWhere('City', 'like', '%'.$query.'%')
         ->orWhere('PostalCode', 'like', '%'.$query.'%')
         ->orWhere('Country', 'like', '%'.$query.'%')**/
         ->orderBy('id', 'desc')
         ->get();
         
       }
       else
       {
         $data = DB::table('services')
         ->orderBy('id', 'desc')
         ->get();
       }
       $total_row = $data->count();
       if($total_row > 0)
       {
         foreach($data as $row)
         {
          $output .= '
          <div class="col-sm-12 rst"
          data-price = "'.$row->price.'"
          data-serviceType = "'.$row->type.'"
          data-nhis = "'.$row->NHIS_code.'"
          data-description = "'.$row->description.'"
          data-id = "'.$row->id.'"
          style="cursor:pointer;"
          >'.$row->description.'</div>';
        }
      }
      else
      {
       $output = '
       <tr>
       <td align="center" colspan="5">No Data Found</td>
       </tr>
       ';
     }
     $data = array(
       'table_data'  => $output,
       'total_data'  => $total_row
     );

     echo json_encode($data);
   }
 }

 public function service_enter(Request $request)
 {
  $num = count($_POST['qty']);
  for ($i=0; $i < $num; $i++) { 
    Service_charge::create([
      'details' => $request['name'][$i],
      'days' => $request['qty'][$i],
      'price' => $request['price'][$i],
      'rec' => $request['rec'],
      'patient' => $request['patient'],
      'type' => $request['type'][$i],
    ]);
  }
  return redirect('print');
}

public function print()
{
  $patient = Session::get('patient');
  $rec = Session::get('rec');
  $data = Consultation::where('rec', $rec)->get();
  $data2 = Description::where('rec', $rec)->get();
  $data3 = Drugsold::where('rec', $rec)->get();
  $data4 = Service_charge::where('rec', $rec)->get();
  $investigation = Service_charge::where('rec', $rec)->where('type', 'investigation')->get();
  $surgery = Service_charge::where('rec', $rec)->where('type', 'surgery/Other procedure')->get();

  return view('print', compact('data', 'data2', 'data3', 'data4', 'surgery', 'investigation'));
}

public function presHistory()
{
  $data = Patient::all();
  return view('presHistory', compact('data'));
}

public function check_history(Request $request)
{
  $patient = $request['patient'];
  Session::put('patient', $request['patient']);
  return redirect('getrec');
}

public function getrec()
{
  $patient = Session::get('patient');
  #return $patient;
  $data = Service_charge::where('patient', $patient)->orderBy('id', 'desc')->distinct()->get('rec');
  if ($data->isEmpty()) {
    Session::flash('error', 'no record found');
    return redirect('presHistory');
  }
  return view('getrec', compact('data'));
}

public function confirm_rec(Request $request)
{
  Session::put('rec', $request['rec']);
  return redirect('print');
}

public function savemonth(Request $request)
{
  $rec = $request['rec'];
  $data = Month::where('rec', $request['rec'])->get();
  if ($data->isEmpty()) {
    Month::create([
      'month' => date('m'),
      'year' => date('Y'),
      'name' => $request['name'],
      'rec' => $request['rec'],
      'nhis' => $request['nhis'],
      'provider' => $request['provider'],
      'amount' => $request['amount'],
      'diagnosis' => $request['diagnosis'],
      'pro_fee' => $request['pro_fee'],
      'drug' => $request['drug'],
      'surgery' => $request['surgery'],
      'approval_code' => Session::get('authorization'),
      'investigation' => $request['investigation']
    ]);
    return redirect('print');
  }
  return redirect('print');
}

public function month()
{
  $data = Month::distinct()->get('provider');
  return view('month', compact('data'));
}

public function generatemonth(Request $request)
{
  $data = Month::where('month', $request['month'])
  ->where('year', $request['year'])
  ->where('provider', $request['provider'])->get();
  if ($data->isEmpty()) {
    Session::flash('error', 'no record found');
    return redirect('month');
  }
  return view('generatemonth', compact('data'));
}

public function patient()
{
 $data = Patient::orderBy('name', 'asc')->paginate(100);
 return view('patient.patient', compact('data'));
}

public function addpatient()
{
  return view('patient.addpatient');
}

public function enterpatient(Request $request)
{
  $request->validate([
    'name' => 'required',
    'nhis_id' => 'required|unique:patients',
    'hmo' => 'required',
    'phone' => 'required',
    'ministry' => 'required',
    'address' => 'required',
    'gender' => 'required',
    'dob' => 'required',
    'marital' => 'required',
    'occupation' => 'required',
    'religion' => 'required',
    'relationship' => 'required',
    'summary' => 'required',
    'diagnosis' => 'required',
    'date' => 'required',
  ]);
  Patient::create([
    'name' => $request['name'],
    'patient_id' => rand(),
    'nhis_id' => $request['nhis_id'],
    'hmo' => $request['hmo'],
    'phone' => $request['phone'],
    'ministry' => $request['ministry'],
    'address' => $request['address'],
    'gender' => $request['gender'],
    'dob' => $request['dob'],
    'marital' => $request['marital'],
    'occupation' => $request['occupation'],
    'religion' => $request['religion'],
    'relationship' => $request['relationship'],
    'summary' => $request['summary'],
    'diagnosis' => $request['diagnosis'],
    'date' => $request['date'],
  ]);
  Session::flash('success', 'Patient Added Successfuly');
  return redirect('patient');
}

public function patientDelete($id)
{
  Patient::where('id', $id)->delete();
   Session::flash('danger', 'Patient Deleted Successfuly');
  return redirect('patient');
}

public function checkLogin()
{
  $data = UserLogin::orderBy('id', 'desc')->paginate(50);
  return view('checkLogin', compact('data'));
}




}