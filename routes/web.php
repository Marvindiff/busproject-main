<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BookingController;
use App\Http\Controllers\AdminLoginController;
use App\Http\Controllers\Auth\AdminRegisterController;
use App\Http\Controllers\TripSearchController;
use App\Http\Middleware\EnsureUserIsAdmin;
use App\Http\Controllers\AdminTripController;

Route::middleware(['auth', 'is_admin'])->get('/admin/trips', [AdminTripController::class, 'showTrips'])->name('admin.trips');

/*
|--------------------------------------------------------------------------
| Public Routes
|--------------------------------------------------------------------------
*/
Route::get('/', function () {
    return view('welcome');
});

// Admin Registration & Login
Route::get('/admin/register', [AdminRegisterController::class, 'showRegistrationForm'])->name('admin.register');
Route::post('/admin/register', [AdminRegisterController::class, 'register'])->name('admin.register.submit');
Route::get('/admin/login', [AdminLoginController::class, 'showLoginForm'])->name('admin.login');
Route::post('/admin/login', [AdminLoginController::class, 'login'])->name('admin.login.submit');

/*
|--------------------------------------------------------------------------
| Authenticated Admin Routes
|--------------------------------------------------------------------------
*/
Route::middleware(['auth', EnsureUserIsAdmin::class])->prefix('admin')->group(function () {
    Route::get('/dashboard', function () {
        return view('admin.dashboard');
    })->name('admin.dashboard');
});

/*
|--------------------------------------------------------------------------
| Authenticated Regular User Routes
|--------------------------------------------------------------------------
*/
Route::middleware(['auth', 'verified'])->group(function () {
    Route::post('/bookings', [BookingController::class, 'store'])->name('bookings.store');
    // other routes...
});
Route::middleware(['auth', 'is_admin'])->get('/admin/trips', [AdminTripController::class, 'showTrips'])->name('admin.trips');

Route::middleware(['auth', 'verified'])->group(function () {
    Route::get('/dashboard', [BookingController::class, 'index'])->name('dashboard');
    Route::get('/search-trips', [TripSearchController::class, 'showForm'])->name('trips.search');
    Route::post('/bookings', [BookingController::class, 'store'])->name('bookings.store');
    Route::delete('/bookings/{id}', [BookingController::class, 'destroy'])->name('bookings.destroy');
    Route::get('/search-trips/results', [TripSearchController::class, 'search'])->name('trips.search.results');
    Route::get('/my-bookings', [BookingController::class, 'list'])->name('bookings.list');
});
