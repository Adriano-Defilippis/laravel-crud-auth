<?php


Route::get('/', function () {
    return view('welcome');
})->name('welcome');

Auth::routes();

Route::get('/home', 'CatController@index')->name('home');


Route::resource('cats', 'CatAuthController');
