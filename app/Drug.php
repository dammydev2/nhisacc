<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Drug extends Model
{
    protected $fillable = [
    	'category',
    	'name',
    	'dosage',
    	'strength',
    	'presentation',
    	'price',
    ];
}
