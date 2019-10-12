<?php


Route::get('/', function () {
    return view('welcome');
})->name('welcome');

Auth::routes();

Route::get('/home', 'CatController@index')->name('home');
Route::get('/cats/delete/{id}', 'CatAuthController@destroy')->name('cat.destroy');

Route::resource('cats', 'CatAuthController');
