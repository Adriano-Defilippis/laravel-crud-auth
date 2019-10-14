<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
use App\Cat;

class AjaxController extends Controller
{

    // public function createPost(Request $request){
    //
    //   $data = $request->all();
    //   dd($data);
    // }

    public function indexShowPosts(){

      $posts = Post::All();
      return view("page.show_posts", compact('posts'));
    }

    public function showForm(){

      return view("page.post_create");
    }
}
