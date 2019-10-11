<?php


Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'CatController@index')->name('home');


Route::resource('cats', 'CatAuthController');
