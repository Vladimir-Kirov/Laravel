<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/

Route::get('/', function () {
    return view('welcome');
})->name('home');

Route::post('/signup', [
	'uses' => 'UserController@postSignUp',
	'as' => 'signup'
]);

Route::post('/signin', [
	'uses' => 'UserController@postSignIn',
	'as' => 'signin'
]);

Route::get('/logout', [
	'uses' => 'UserController@getLogout',
	'as' => 'logout'
]);

Route::get('/account', [
	'uses' => 'UserController@getAccount',
	'as' => 'account'
]);

Route::post('/update-account', [
	'uses' => 'UserController@postSaveAccount',
	'as' => 'account.save'
]);

Route::get('/userimage/{filename}', [
	'uses' => 'UserController@getUserImage',
	'as' => 'account.image'
]);


Route::get('/blog', [
	'uses' => 'PostController@getIndex',
	'as' => 'blog.index'
]);

Route::get('post/{id}', [
	'uses' => 'PostController@getPost',
	'as' => 'blog.post'
]);

Route::get('post/{id}/like', [
	'uses' => 'PostController@getLikePost',
	'as' => 'blog.post.like'
]);

Route::get('about', function () {
	return view('other.about');
})->name('other.about');


Route::group(['prefix' => 'admin'], function () {
	Route::get('', [
		'uses' => 'PostController@getAdminIndex',
		'as' => 'admin.index'
	]);

	Route::get('create', [
		'uses' => 'PostController@getAdminCreate',
		'as' => 'admin.create'
	]);

	Route::post('create', [
		'uses' => 'PostController@postAdminCreate',
		'as' => 'admin.create'		
	]);

	Route::get('edit/{id}', [
		'uses' => 'PostController@getAdminEdit',
		'as' => 'admin.edit'	
	]);

	Route::get('delete/{id}', [
		'uses' => 'PostController@getAdminDelete',
		'as' => 'admin.delete'	
	]);

	Route::post('edit', [
		'uses' => 'PostController@postAdminUpdate',
		'as' => 'admin.update'
	]);
});


