<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Service_charge extends Model
{
    protected $fillable = [
    	'details',
    	'days',
    	'price',
    	'rec',
    	'patient',
    ];
}
