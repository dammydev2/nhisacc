<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});


Auth::routes();

Route::get('/home', 'HomeController@index');

Route::get('/drug', 'HomeController@drug');

Route::get('/add_drug', 'HomeController@add_drug');

Route::get('/add_category', 'HomeController@add_category');

Route::post('/entercategory', 'HomeController@entercategory');





