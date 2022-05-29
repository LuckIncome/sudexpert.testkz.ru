<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PagesController;
use App\Http\Controllers\FeedbackController;
use App\Http\Controllers\ServiceController;
use App\Http\Controllers\ActController;
use App\Http\Controllers\AboutController;
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

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Route::get('/locale/{lang}',[PagesController::class,'setLocale'])->name('locale.set');

Route::post('/p_review', [FeedbackController::class,'review'])->name('p_review');
Route::post('/c_feedback', [FeedbackController::class,'consultation'])->name('c_feedback');
Route::post('/f_feedback', [FeedbackController::class,'faq'])->name('f_feedback');

Route::group(['prefix' => 'services'], function() {
    Route::get('/', [ServiceController::class, 'index'])->name('services');
    Route::get('/{article}', [ServiceController::class, 'show'])->name('services.show');
});

Route::group(['prefix' => 'acts'], function() {
    Route::get('/', [ActController::class, 'index'])->name('acts');
    Route::get('/{article}', [ActController::class, 'show'])->name('acts.show');
});

Route::group(['prefix' => 'about'], function() {
    Route::get('/', [AboutController::class, 'index'])->name('about');
    Route::get('/{article}', [AboutController::class, 'show'])->name('about.show');
});

Route::get('/{page?}',[PagesController::class,'getPage'])->name('pages.get');