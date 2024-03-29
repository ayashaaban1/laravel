<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ExampleController;
use App\Http\Controllers\FormController;
use App\Http\Controllers\CarController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\SendMailController;

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

  //  Route::get('/', function () {
  //      return view('test');
  //  });    
        
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
//Route::get('createcar', [CarController::class, 'create'])->name('createcar');
Route::post('storecar', [CarController::class, 'store'])->name('storecar');
Route::get('cars', [CarController::class, 'index'])->name('cars');
//task4
Route::get('addpost', [PostController::class, 'create'])->name('addpost');
Route::post('storepost', [PostController::class, 'store'])->name('storepost');
//session 5
Route::get('updateCar/{id}', [CarController::class, 'edit']);
Route::put('update/{id}', [CarController::class, 'update'])->name('update');
Route::get('showCar/{id}', [CarController::class, 'show'])->name('showCar');
//task 5
Route::get('posts', [PostController::class, 'index'])->name('posts');
Route::get('editpost/{id}', [PostController::class, 'edit']);
Route::put('updatepost/{id}', [PostController::class, 'update'])->name('updatepost');
//session 6
Route::get('deleteCar/{id}', [CarController::class, 'destroy']);
Route::get('trashed', [CarController::class, 'trashed'])->name('trashed');
Route::get('forceDelete/{id}', [CarController::class, 'forceDelete'])->name('forceDelete');
Route::get('restoreCar/{id}', [CarController::class, 'restore'])->name('restoreCar');
//task 6
Route::get('deletePost/{id}', [PostController::class, 'destroy']);
Route::get('trashedPost', [PostController::class, 'trashed'])->name('trashedPost');
Route::get('forceDeletePost/{id}', [PostController::class, 'forceDelete'])->name('forceDeletePost');
Route::get('restorePost/{id}', [PostController::class, 'restore'])->name('restorePost'); 
///session 7
Route::get('testimage',function (){
    return view('test');
});
Route::get('image',function (){
    return view('image');
});
Route::post('imageUpload', [ExampleController::class,'upload'])->name('imageUpload');
///session 8
Route::get('testHome',function (){
    return view('testHome');
})->name('testHome');
Route::get('404',function (){
    return view('404');
})->name('404');
//Route::get('contact',function (){
  //  return view('contact');
//})->name('contact');

Auth::routes(['verify'=>true]);

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

//Auth::routes();

//Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
//middleware('verified')

Route::group(
    [
        'prefix' => LaravelLocalization::setLocale(),
        'middleware' => [ 'localeSessionRedirect', 'localizationRedirect', 'localeViewPath' ]
    ], function(){
Route::get('createcar',[CarController::class,'create'])->middleware('verified')->name('createcar');
    });


    
//session12
Route::get('test20', [ExampleController::class, 'createSession']);

///task12
Route::get('contact', [SendMailController::class, 'index'])->name('contact');
Route::post('send-mail', [SendMailController::class, 'store'])->name('send-mail');

