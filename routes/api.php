<?php

use App\Http\Controllers\CategoriesCrontoller;
use App\Http\Controllers\PostsCrontoller;
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::apiResource('v1/posts', PostsCrontoller::class);
Route::apiResource('v1/categories', CategoriesCrontoller::class);
Route::apiResource('v1/usuarios', UserController::class);

Route::get('v1/posts/{id}/categories', [PostsCrontoller::class, 'CategoriaXPost']);
Route::get('v1/categories/{id}/posts', [CategoriesCrontoller::class, 'PostXCategoria']);
Route::post('v1/posts/categorizar', [PostsCrontoller::class, 'asignarCategoriaPost']);
Route::delete('v1/categorizacion/eliminar-post', [PostsCrontoller::class, 'eliminarPostDeCategoria']);