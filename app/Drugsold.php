<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Drugsold extends Model
{
    protected $fillable = [
    	'rec',
    	'patient',
    	'name',
    	'qty',
    	'price',
    	'dosage',
    ];
}
