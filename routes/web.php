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
    return view('index');
});


Auth::routes();

Route::get('/home', 'HomeController@index');

Route::get('/drug', 'HomeController@drug');

Route::get('/add_drug', 'HomeController@add_drug');

Route::get('/add_category', 'HomeController@add_category');

Route::get('/service', 'HomeController@service');

Route::get('/addservice', 'HomeController@addservice');

Route::get('/consultation', 'HomeController@consultation');

Route::get('/first', 'HomeController@first');

Route::get('/prescription', 'HomeController@prescription');

Route::get('/patientservice', 'HomeController@patientservice');

Route::get('/print', 'HomeController@print');

Route::get('/presHistory', 'HomeController@presHistory');

Route::get('/getrec', 'HomeController@getrec');

Route::get('/month', 'HomeController@month');

Route::get('/pagination/fetch_data', 'HomeController@fetch_data');

Route::get('/pagination/fetch_service', 'HomeController@fetch_service');

Route::get('/edit_drug/{id}', 'HomeController@edit_drug');

Route::get('/editservice/{id}', 'HomeController@editservice');

Route::get('/drugdelete/{id}', 'HomeController@drugdelete');

Route::get('/servicedelete/{id}', 'HomeController@servicedelete');

Route::post('/entercategory', 'HomeController@entercategory');

Route::post('/enterdrug', 'HomeController@enterdrug');

Route::post('/updatedrug', 'HomeController@updatedrug');

Route::post('/enterservice', 'HomeController@enterservice');

Route::post('/updateservice', 'HomeController@updateservice');

Route::post('/enterconsultation', 'HomeController@enterconsultation');

Route::post('/enterfirst', 'HomeController@enterfirst');

Route::post('/sale_enter', 'HomeController@sale_enter');

Route::post('/service_enter', 'HomeController@service_enter');

Route::post('/check_history', 'HomeController@check_history');

Route::post('/confirm_rec', 'HomeController@confirm_rec');

Route::post('/savemonth', 'HomeController@savemonth');

Route::post('/generatemonth', 'HomeController@generatemonth');

Route::get('/live_search/action', 'HomeController@action')->name('live_search.action');

Route::get('/live_search2/action', 'HomeController@action2')->name('live_search2.action');





