<?php

namespace App\Http\Controllers\user;

use App\Http\Controllers\Controller;
use App\Model\user\Contact;
use Illuminate\Http\Request;

class ContactController extends Controller
{
	public function create(){

    	return view('user.contact');

   	}

	public function store(Request $request)
	{
		$request->validate([

            'name'=> 'required',
            'email'=> 'required|email',
            'message'=> 'required'
        ]);

        $input =['name'=>$request->name,
        		  'email'=>$request->email,
        		   'message'=>$request->message
    			];
    	Contact::create($input);
    	return redirect('/contact')->with('success','your message successfully submited');


	}
}
