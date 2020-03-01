<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Month extends Model
{
    protected $fillable = [
    	'month',
    	'year',
    	'rec',
    	'name',
    	'nhis',
    	'provider',
    	'amount',
<<<<<<< HEAD
=======
    	'diagnosis',
    	'pro_fee',
    	'drug',
    	'surgery',
>>>>>>> 44de3512f806c635a472d5b3151a94a6a9f14be5
    ];
}
