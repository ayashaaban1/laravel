<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ExampleController extends Controller
{
    public function show(){
        return 'welcome to my fist controller';
    }
    
    public function upload(Request $request){
        $file_extension = $request->image->getClientOriginalExtension();
        $file_name = time() . '.' . $file_extension;
        $path = 'assets/images';
        $request->image->move($path, $file_name);
        return 'Uploaded';
    }
    public function createSession(){
        session()->put('testSession', ' my First session value');
        //session()->forget('testSession');
        //session()->flash('testSession', ' my First session value');
        return 'session created' . session('testSession');
    }
}
