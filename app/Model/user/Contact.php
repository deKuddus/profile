<?php

namespace App\Model\user;

use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
	protected $table = 'contacts';
    protected $fillable = [ 'name', 'email','message'];
}
