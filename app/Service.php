<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    protected $fillable = [
    	'NHIS_code',
    	'description',
    	'price',
    	'type'
    ];
}
