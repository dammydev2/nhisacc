<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserLogin extends Model
{
    protected $fillable=[
    	'user_id',
    	'user_name',
    	'login_at',
    	'logout_at'
    ];
}
