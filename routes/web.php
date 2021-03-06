<?php

Route::get('/', function () {
    return view('welcome');
})->name('welcome');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
// Route::get('/{id}', 'CatAuthController@destroy')->name('cat.destroy');
// Route::get('/messagessent/{id}', 'CatAuthController@showMessageSent')->name('messageSent.show');
// Route::get('/{name}/posts', 'CatAuthController@showPosts')->name('post.show');
Route::resource('cats', 'CatAuthController');

Route::resource('posts', 'PostAuthController');

Route::get('/post/ajaxcreate', 'AjaxController@showForm')->name('ajaxShow.form');
Route::get('/post/ajaxshowpost', 'AjaxController@indexShowPosts')->name('ajaxShow.indexPost');
// Route::get('/post/{id}', 'PostAuthController@createPost')->name('post.createpost');
//
// Route::post('cat/post/store', 'PostAuthController@store')->name('post.store');
