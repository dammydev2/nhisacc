<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\DrugCategory;
use Session;

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
        return view('drug');
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


}







