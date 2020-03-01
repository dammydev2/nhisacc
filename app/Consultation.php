<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Consultation extends Model
{
    protected $fillable = [
    	'name',
    	'NHIS',
    	'patient',
    	'rec',
    	'provider',
    	'authorization',
    	'HCP',
    	'presentation',
    	'admission',
    	'discharge',
    	'diagnosis',
    	'phone',
    	'code',
    ];
}
