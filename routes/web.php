<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ExampleController;
use App\Http\Controllers\FormController;
use App\Http\Controllers\CarController;
use App\Http\Controllers\PostController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

//Route::fallback(function() {
//    return redirect('/');
//});

Route::get('food',function (){
    return view('food');
});

Route::prefix('lar')->group(function () {

    Route::get('/', function () {
        return view('test');
    });    
        
    Route::get('test', function () {
        return 'welcome to my first laravel website';
    });
    
    Route::get('test1/{id}', function ($id) {
        return 'the id is:' . $id;
    });
    
    /*
    Route::get('test2/{id?}', function ($id=0) {
        return 'the id 2 is: ' . $id;
    })->where(['id'=> '[0-9]+']);
    */
    
    Route::get('test2/{id?}', function ($id=0) {
        return 'the id 2 is: ' . $id;
    })->whereNumber('id');
    
    Route::get('test3/{name?}', function ($name=null) {
        return 'the name is: ' . $name;
    })->whereAlpha('name');
    
    Route::get('test4/{id}/{name}', function ($id,$name) {
        return 'the age is: '. $id . ' and the name is: ' . $name;
    })->where(['id'=> '[0-9]+', 'name'=> '[a-zA-Z]+']);
    /*
    Route::get('product/{category}', function ($cat) {
        return 'The category is: ' . $cat;
    })->whereIn('category',['it', 'hr','ict']);
    */

});

// task 2

Route::get('about', function () {
    return 'about';
});

Route::get('contactUs', function () {
    return 'contact us';
});

Route::prefix('blog')->group(function () {

    Route::get('/', function () {
        return 'blog group';
    });    
    
    Route::get('science', function () {
        return 'science page';
    });
    
    Route::get('sports', function () {
        return 'sports page';
    });
    
    Route::get('math', function () {
        return 'math page';
    });
    
    Route::get('medical', function () {
        return ' medical page';
    });
});
/*
//session 3
Route::get('login',function (){
    return view('login');
});    

Route::post('logged',function (){
    return 'you are logged in';
})->name('logged');

Route::get('control', [ExampleController::class,'show']);
*/
// task 3
Route::get('login', [FormController::class, 'show']);
Route::post('logged', [FormController::class, 'store'])->name('logged');
Route::get('data', [FormController::class, 'data'])->name('data');
//session 4
//store data into car table
//Route::get('storecar', [CarController::class, 'store']);
Route::get('createcar', [CarController::class, 'create']);
Route::post('storecar', [CarController::class, 'store'])->name('storecar');
Route::get('cars', [CarController::class, 'index']);
//task4
Route::get('addpost', [PostController::class, 'create']);
Route::post('storepost', [PostController::class, 'store'])->name('storepost');


