<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Cat;
use App\Img_cat;
use App\User;
use App\Post;

class CatAuthController extends Controller
{

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

      $cat = Cat::findOrFail($id);
      $posts = Post::orderBy('created_at', 'DESC') -> get();

      return view('page.show_profile', compact('cat', 'posts'));
    }


    public function showMessageSent($id)
    {

      $cat = Cat::findOrFail($id);


      return view('page.messages_sent_show', compact('cat'));
    }


    public function showPosts($id)
    {

      $cat = Cat::findOrFail($id);


      return view('page.show_profile', compact('cat'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $cat = Cat::findOrFail($id);
        $user = User::findOrFail($cat -> user_id);

        $img_cat = Img_cat::findOrFail($cat -> img_cat_id);
        $name_img = $img_cat -> src;
        $str = str_replace("/", "", $name_img);

        return view('page.cats_edit', compact('cat', 'str', 'user'));
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

      $validatedData_user = $request->validate([
        'name' => ['required', 'string', 'max:255'],
      ]);

      $validatedData_cat = $request->validate([
        'name' => ['required', 'string', 'max:255'],
        'race' => ['required', 'string', 'max:255'],
      ]);



      $user_id = Cat::findOrFail($id) -> user_id;


      User::whereId($user_id) -> update($validatedData_user);
      Cat::whereId($id) -> update($validatedData_cat);
      return redirect('/home');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $cat = Cat::findOrFail($id);
        $id_img = $cat-> img_cat_id;
        $id_user = $cat -> user_id;

        $img_name = Img_cat::findOrFail($id_img) -> src;
        $str = str_replace("/", "", $img_name);
        $image_path = public_path("img/$str");
        unlink($image_path);


        $cat = Cat::findOrFail($id) -> delete();
        $img_cat = Img_cat::findOrFail($id_img) -> delete();
        $user = User::findOrFail($id_user) -> delete();

        return redirect('welcome');

    }
}
