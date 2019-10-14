<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Cat;

class HomeController extends Controller
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
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $cats = Cat::all();
        return view('page.index_cats', compact('cats'));
    }
}
