<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\user\Post;
use App\Model\user\Tag;
use App\Model\user\Category;
use Illuminate\Support\Facades\Auth;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

     public function __construct()
    {
        $this->middleware('auth:admin');
    }
   
    public function index()
    {
        $postData = Post::get();
        return view('admin.post.show')->with('postData', $postData);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        /*if (Auth::user()->can('posts.create')) {
    
            }*/
                $tags = Tag::get();

                $categories = Category::get();

                return view('admin.post.post')->with(compact('tags','categories'));
            //return redirect(route('admin/home'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        //return $request->all();
        $request->validate([

            'title' => 'required',
            'subtitle'=> 'required',
            'slug'=> 'required',
            'image'=> 'required|mimes:jpeg,jpg,bmp,png|max:7120',
            'body'=> 'required',
            'tags' => 'required',
            'categories' => 'required'
        ]);

       
        if($request->hasFile('image'))
        {
            $imageName = $request->image->store('public');
        }
        $post = new Post;
        $post->image = $imageName;
        $post->title=$request->title;
        $post->subtitle=$request->subtitle;
        $post->unique_val=$request->slug;
        $post->body=$request->body;
        $post->status=$request->status;
        $post->save();
        
        $post->tags()->sync($request->tags);
        $post->categories()->sync($request->categories);

        return redirect('admin/post');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {

            $tags = Tag::get();
            $categories = Category::get();
            $post =  Post::with('tags','categories')->where('id', $id)->first();


            return view('admin.post.edit')->with(compact('tags','categories','post'));
/*        if (Auth::user()->can('posts.update')) {
        }
        return redirect(route('admin/home'));*/
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {


        $request->validate([

            'title' => 'required',
            'subtitle'=> 'required',
            'slug'=> 'required',
            'image'=> 'required|mimes:jpeg,jpg,bmp,png|max:7120',
            'body'=> 'required',
            'tags' => 'required',
            'categories' => 'required'
        ]);

        if($request->hasFile('image'))
        {
            $imageName = $request->image->store('public');
        }

        $post = Post::find($id);
        $post->image = $imageName;
        $post->title=$request->title;
        $post->subtitle=$request->subtitle;
        $post->unique_val=$request->slug;
        $post->body=$request->body;
        $post->status=$request->status;
        $post->save();
        $post->tags()->sync($request->tags);
        $post->categories()->sync($request->categories);

        return redirect('admin/post');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        post::where('id',$id)->delete();
        return redirect()->back();
    }
}
