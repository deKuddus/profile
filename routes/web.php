<?php




// User Routes
Route::group(['namespace' => 'user'],function(){
	Route::get('/','HomeController@home');
	Route::get('/blog','HomeController@index');
	Route::get('blog/{slug}','PostController@post')->name('blog');
	Route::get('/profile','HomeController@profile')->name('profile');

	Route::get('tag/{tag}','HomeController@tags')->name('tag');
	Route::get('category/{category}','HomeController@category')->name('category');


	Route::get('/contact','ContactController@create')->name('contact');
	Route::post('/contact','ContactController@store')->name('contact-store');

});

//Admin Routes
Route::group(['namespace' => 'Admin'],function(){
	Route::get('admin/home','HomeController@index')->name('admin.home');
	// Users Routes
	Route::resource('admin/user','UserController');
	// Roles Routes
	Route::resource('admin/role','RoleController');
	// Permission Routes
	Route::resource('admin/permission','PermissionController');
	// Post Routes
	Route::resource('admin/post','PostController');
	// Tag Routes
	Route::resource('admin/tag','TagController');
	// Category Routes
	Route::resource('admin/category','CategoryController');
	// Admin Auth Routes
	Route::get('admin-login', 'Auth\LoginController@showLoginForm')->name('admin.login');
	Route::post('admin-login', 'Auth\LoginController@login');
});


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/home/test/ji', 'HomeController@index')->name('unique_val');
Route::get('/home/test', 'HomeController@index')->name('admin/home');
Route::get('/home/test/new', 'HomeController@index')->name('cat-by-post');
