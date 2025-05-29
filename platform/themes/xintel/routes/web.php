<?php

use Botble\Theme\Facades\Theme;
use Botble\Theme\Services\ThemeService;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Route;
use Theme\Xintel\Http\Controllers\XintelController;

// Custom routes
// You can delete this route group if you don't need to add your custom routes.
Route::group(['controller' => XintelController::class, 'middleware' => ['web', 'core']], function () {
    Route::group(apply_filters(BASE_FILTER_GROUP_PUBLIC_ROUTE, []), function () {

        // Add your custom route here
        // Ex: Route::get('hello', 'getHello');
        Route::get('blog', 'getBlog')->name('public.blog');
        // clear cache and publish assets
        Route::get('clear-cache', function (ThemeService $themeService) {
            set_time_limit(-1);
            Artisan::call('cache:clear');
            Artisan::call('config:clear');
            Artisan::call('route:clear');
            Artisan::call('view:clear');
            $themeService->publishAssets();
            return 'Cache cleared successfully';
        });

    });
});

Theme::routes();
