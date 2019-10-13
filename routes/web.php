<?php


Route::get('/', function () {
    return view('welcome');
})->name('welcome');

Auth::routes();

Route::get('/home', 'CatController@index')->name('home');
Route::get('/{id}', 'CatAuthController@destroy')->name('cat.destroy');
Route::get('/messagessent/{id}', 'CatAuthController@showMessageSent')->name('messageSent.show');
Route::get('/{name}/posts', 'CatAuthController@showPosts')->name('post.show');
Route::resource('cats', 'CatAuthController');
