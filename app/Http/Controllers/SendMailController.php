<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Mail;
use App\Mail\SampleMail;

class SendMailController extends Controller
{  
    public function index()
    {
        return view('contact');
    }

    public function store(Request $request){

      $content=$request->validate([
        'name'=>  'required',
        'email'=> 'required',
        'phone'=> 'required',
        'subject'=> 'required',
        'message'=> 'required|min:20|max:100',
       ]);

      Mail::to('as3957401@gmail.com')->send(new SampleMail($content));

     return "Email has been sent.";
}
}


