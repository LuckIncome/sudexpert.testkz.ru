<?php

namespace App\Http\Controllers;

use TCG\Voyager\Models\Page;
use App\Models\FAQ;
use App\Models\Review;
use App\Models\Personal;
use App\Models\Icon;
use App\Models\Act;
use App\Models\Service;
use App\Models\BlockAbout;
use App\Models\Banner;

use App\Models\User;
use Illuminate\Http\Client\Response;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class PagesController extends Controller
{
    public function getPage($slug = 'home')
    {
        $locale = session()->get('locale');
        $fallbackLocale = config('voyager.multilingual.default');

        if (strpos(url()->current(), 'home') !== false) {            
            abort(404);
        } else {
            $page = Page::select('type', 'id', 'title', 'excerpt', 'body', 'image', 'slug', 'seo_title', 'meta_description', 'meta_keywords', 'status')
                ->where(['slug' => $slug, 'status' => Page::STATUS_ACTIVE])
                ->firstOrFail();
        }
        $page = $page->translate($locale, $fallbackLocale);

        switch ($page->type) {
            case 'home':
                $faqs = FAQ::with(['translations'])
                    ->take(4)
                    ->get()
                    ->translate($locale, $fallbackLocale);
                $reviews = Review::where('status', true)
                    ->orderBy('updated_at', 'desc')
                    ->take(24)
                    ->get();
                $icons = Icon::with(['translations'])
                    ->orderBy('created_at', 'asc')
                    ->take(4)
                    ->get()
                    ->translate($locale, $fallbackLocale);
                $personals = Personal::with(['translations'])
                    ->orderBy('created_at', 'desc')
                    ->get()
                    ->translate($locale, $fallbackLocale);
                $acts = Act::with(['translations'])
                    ->where('status', true)
                    ->orderBy('created_at', 'desc')
                    ->get()
                    ->translate($locale, $fallbackLocale);
                $reviews = Review::where('status', true)
                    ->orderBy('updated_at', 'desc')
                    ->get();    
                $services = Service::with(['translations'])
                    ->where('status', true)
                    ->orderBy('created_at', 'desc')
                    ->get()
                    ->translate($locale, $fallbackLocale);
                $banner = Banner::with(['translations'])->first();
                $banner = $banner->translate($locale, $fallbackLocale);
                $block_about = BlockAbout::with(['translations'])->first();
                $block_about = $block_about->translate($locale, $fallbackLocale);
                return view('pages.' . $page->type, compact(
                    'page', 
                    'faqs', 
                    'reviews',
                    'icons',
                    'personals',
                    'acts',
                    'reviews',
                    'services',
                    'banner',
                    'block_about'
                ));
                break;
            case 'faq':
                $faqs = FAQ::with(['translations'])->get()->translate($locale, $fallbackLocale);
                return view('pages.' . $page->type, compact('page', 'faqs'));
                break;  
            case 'reviews':
                $reviews = Review::where('status', true)->orderBy('updated_at', 'desc')->paginate(8);
                return view('pages.' . $page->type, compact('page', 'reviews'));
                break;  
            case 'simple':
                return view('pages.' . $page->type, compact('page'));
                break;
            default :
                return view('pages.' . $page->type, compact('page'));
                break;
        }
    }

    public function setLocale($locale)
    {
        if (in_array($locale, config()->get('voyager.multilingual.locales'))) {
            session()->put('locale', $locale);
        }
        return redirect()->back();
    }
}
