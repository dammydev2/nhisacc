<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\DrugCategory;
use App\Drug;
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
        $data = DB::table('drugs')->orderBy('id', 'asc')->paginate(5);
     return view('drug', compact('data'));
       #return view('drug');
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
    return redirect('drug');
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


}







