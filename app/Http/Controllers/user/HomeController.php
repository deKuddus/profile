<?php

namespace App\Http\Controllers\user;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\user\Post;
use App\Model\user\Tag;
use App\Model\user\Category;

class HomeController extends Controller
{
   public function index(){
     $posts = Post::where('status',1)->paginate(5);
     $tags = Tag::get();
     $categories = Category::get();
     return view('user.blog')->with(['posts'=>$posts ,'tags'=>$tags,'categories'=>$categories]);
  }

  public function home(){
    $categories = Category::get();
    $post = Post::orderBy('id', 'DESC')->first();
    $all_post = Post::orderBy('created_at', 'DESC')->get()->random(2);
    return view('user.layout.home')->with(['post'=>$post,'all_post'=>$all_post,'categories'=>$categories]);
  }

   public function tags(Tag $tag){
      $tags = Tag::get();
      $categories = Category::get();
      $posts =  $tag->posts();
      return view('user.tag')->with(['posts'=>$posts ,'tags'=>$tags,'categories'=>$categories]);
   }

   public function category(Category $category){
      $tags = Tag::get();
      $categories = Category::get();
      $posts =  $category->posts();
      return view('user.category')->with(['posts'=>$posts ,'tags'=>$tags,'categories'=>$categories]);

   }

   public function profile(){

    return view('user.profile');

   }





}
