<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;

class PostController extends Controller
{
    private $columns =['postTitle', 'description', 'author', 'published'];
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $posts = Post::get();
        return view('posts', compact('posts'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('addpost');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
       // $post = new Post();
       // $post->postTitle = $request->postTitle;
       // $post->description = $request->description;
       // $post->author = $request->author;
       // if(isset($request->published)){
       //     $post->published = 1;
       // }else{
       //     $post->published = 0;
       // }
       // $post->save();
        // return "data added successfully";

        $data = $request->validate([
            'postTitle'=>'required|string|max:50',
            'description'=>'required|string',
            'author'=>'required|string',
          ]);
          
        $data['published'] = isset($request->published);
        Post::create($data);
        return redirect('posts');
    
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $post = Post::findOrFail($id);
        return view('updatepost', compact('post'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
       $data = $request->only($this->columns);
       $data['published'] = isset($request->published);
       Post::where('id', $id)->update($data);
       return redirect('posts');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        Post::where('id', $id)->delete();
        return redirect('posts');
    }
     /**
     * trashed list.
     */
    public function trashed()
    {
       $posts = Post::onlyTrashed()->get();
       return view('trashedposts', compact('posts'));
    }
    /**
     * forceDelete.
     */
    public function forceDelete(string $id)
    {
        Post::where('id', $id)->forceDelete();
        return redirect('posts');
    }
    /**
     * restore.
     */
    public function restore(string $id)
    {
        Post::where('id', $id)->restore();
        return redirect('posts');
    }
}
