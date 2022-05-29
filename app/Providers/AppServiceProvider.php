<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use TCG\Voyager\Http\Controllers\ContentTypes\Image;
use TCG\Voyager\Http\Controllers\ContentTypes\MultipleImage;
use TCG\Voyager\Http\Controllers\Controller;
use TCG\Voyager\Http\Controllers\VoyagerController;
use TCG\Voyager\Http\Controllers\VoyagerSettingsController;
use TCG\Voyager\Http\Controllers\VoyagerBaseController;

use TCG\Voyager\Models\Page;
use App\Models\Contact;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        $this->app->bind(VoyagerBaseController::class, \App\Http\Controllers\Voyager\VoyagerBaseController::class);
        $this->app->bind(VoyagerController::class, \App\Http\Controllers\Voyager\VoyagerController::class);
        $this->app->bind(Controller::class, \App\Http\Controllers\Voyager\Controller::class);
        $this->app->bind(VoyagerSettingsController::class, \App\Http\Controllers\Voyager\VoyagerSettingsController::class);
        $this->app->bind(Image::class, \App\Http\Controllers\Voyager\ContentTypes\Image::class);
        $this->app->bind(MultipleImage::class, \App\Http\Controllers\Voyager\ContentTypes\MultipleImage::class);
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Schema::defaultStringLength(191); 

        view()->composer('*', function ($view) {
            $view->with('locale', session()->get('locale'));
            $view->with('fallbackLocale', config('voyager.multilingual.default'));
        });

        view()->composer([
            'partials.header', 
            'partials.footer', 
            'partials.sidebar', 
            'pages.contacts'
        ], function ($view)
        {
            $locale = session()->get('locale');
            $fallbackLocale = config('voyager.multilingual.default');

            $phone = Contact::select('value', 'link')->where('type','phone')->where('is_main',true)->where('status',true)->firstOrFail();
            $view->with('phone',$phone);

            $phones = Contact::select('value', 'link')->where('type','phone')->where('is_main',true)->where('status',true)->get();
            $view->with('phones',$phones);

            $email = Contact::select('value', 'link')->where('type','email')->where('is_main',true)->where('status',true)->firstOrFail();
            $view->with('email',$email);

            $socials = Contact::where('type','social')->where('is_main',true)->where('status',true)->orderBy('sort_id')->get();
            $view->with('socials',$socials);

            $adress = Contact::with(['translations'])->where('type','address')->where('is_main',true)->where('status',true)->firstOrFail();
            $adress = $adress->translate($locale,$fallbackLocale);
            $view->with('adress',$adress);

            $graph = Contact::with(['translations'])->where('type','graph')->where('is_main',true)->where('status',true)->firstOrFail();
            $graph = $graph->translate($locale,$fallbackLocale);
            $view->with('graph',$graph);

            $map = Contact::select('value')->where('type','map')->where('is_main',true)->where('status',true)->firstOrFail();
            $view->with('map',$map);
            
            $pages = Page::withTranslation($locale)->whereNotIn('type',['home'])->where('status',Page::STATUS_ACTIVE)->get();
            $pages = $pages->translate($locale,$fallbackLocale);
            $pages = $pages->groupBy('type');            
            $view->with('pages',$pages);
        });
    }
}
