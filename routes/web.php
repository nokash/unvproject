<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

use App\Project;

Route::get('/', 'PagesController@index');

Route::get('/login', 'PagesController@index');
Route::get('/register', 'PagesController@index');
Route::resource('projects', 'ProjectsController');
Auth::routes();

Route::get('/api/projects/all', 'APIController@projects');
Route::get('/api/projects/country/{country}','APIController@country');

Route::get('api/projects/status/{status}', 'APIController@projectStatus');

