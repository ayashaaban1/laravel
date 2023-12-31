<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Car;
use App\Traits\Common;
use App\Models\Category;

class CarController extends Controller
{
    use Common;
    private $columns =['title', 'description', 'published'];
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $cars = Car::get();
        return view('cars', compact('cars'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $categories = Category::get();
        return view('addcar', compact('categories'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
      //  $cars = new Car();
      //  $cars->title = "BMW";
      //  $cars->description = "BMW description";
      //  $cars->published = 1;
      //  $cars->save();
      //  return 'Data added successfully';
      //  $cars = new Car();
      //  $cars->title = $request->title;
      //  $cars->description = $request->description;
      //  if(isset($request->published)){
      //      $cars->published = 1;
      //  }else{
      //      $cars->published = 0;
      //  }
      //  $cars->save();
      //  return "data added successfully";
      //session 5
      /// $data = $request->only($this->columns);
      $messages = $this->messages();
      $data = $request->validate([
          'title'=>'required|string|max:50',
          'description'=>'required|string',
          'image' => 'required|mimes:png,jpg,jpeg|max:2048',
          'category_id'=>'required',
        ], $messages);
       $fileName = $this->uploadFile($request->image, 'assets/images');    
       $data['image'] = $fileName;
       $data['published'] = isset($request->published);
       Car::create($data);
       return redirect('cars');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $car = Car::findOrFail($id);
        return view('showCar', compact('car'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $car = Car::findOrFail($id);
        $categories = Category::get();
        return view('updateCar', compact('car','categories'));
        
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
      // $data = $request->only($this->columns);
      //$messages = $this->messages();
      //$data = $request->validate([
      //  'title'=>'required|string|max:50',
      //  'description'=>'required|string',
      //  'image' => 'mimes:png,jpg,jpeg|max:2048',
      // ],$messages);
      // $image = $request->file('image');
      // if($image){
      // $fileName = $this->uploadFile($image, 'assets/images');    
      // $data['image'] = $fileName;
      // unlink("assets/images/" . $request->oldImage);

       //}else{
       // $car= Car::findOrFail($id);
       // $data['image']=$car->image;
       //}
       //$data['published'] = isset($request->published);
      // Car::where('id', $id)->update($data);
      // return redirect('cars');
      $messages = $this->messages();
        $data = $request->validate([
             'title'=>'required|string|max:50',
             'description'=> 'required|string',
             'image' => 'sometimes|mimes:png,jpg,jpeg|max:2048',
             'category_id'=>'required',
            ], $messages);

            if($request->hasFile('image')){
                $fileName = $this->uploadFile($request->image, 'assets/images');    
                $data['image'] = $fileName;
            }
            
            $data['published'] = isset($request->published);
            Car::where('id', $id)->update($data);
            return redirect('cars');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        Car::where('id', $id)->delete();
        return redirect('cars');
    }
    /**
     * trashed list.
     */
    public function trashed()
    {
       $cars = Car::onlyTrashed()->get();
       return view('trashed', compact('cars'));
    }
    /**
     * forceDelete.
     */
    public function forceDelete(string $id)
    {
        Car::where('id', $id)->forceDelete();
        return redirect('cars');
    }
    /**
     * restore.
     */
    public function restore(string $id)
    {
        Car::where('id', $id)->restore();
        return redirect('cars');
    }
    
    public function messages()
    {
        return[
            'title.required'=>'العنوان مطلوب',
            'title.string'=>'Should be string',
            'description.required'=> 'should be text',
            'image.required'=> 'Please be sure to select an image',
            'image.mimes'=> 'Incorrect image type',
            'image.max'=> 'Max file size exceeded',
            ]; 
    }

}
