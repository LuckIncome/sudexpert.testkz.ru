<?php

namespace App\Http\Controllers;

use TCG\Voyager\Models\Page;
use App\Models\Service;
use App\Models\Personal;
use App\Models\Icon;
use App\Models\About;
use App\Models\AboutContent;

use Illuminate\Http\Request;

class AboutController extends Controller
{
    public function index() 
    {
        $locale = session()->get('locale');
        $fallbackLocale = config('voyager.multilingual.default');

        $services = Service::with(['translations'])
            ->where('status', true)
            ->orderBy('created_at', 'desc')
            ->get()
            ->translate($locale, $fallbackLocale);

        $about_content = AboutContent::with(['translations'])->first();
        $about_content = $about_content->translate($locale, $fallbackLocale);

        $personals = Personal::with(['translations'])
            ->orderBy('created_at', 'desc')
            ->get()
            ->translate($locale, $fallbackLocale);

        $icons = Icon::with(['translations'])
            ->orderBy('created_at', 'asc')
            ->take(4)
            ->get()
            ->translate($locale, $fallbackLocale);

        $page = Page::with(['translations'])->where(['type' => 'about'])->firstOrFail();
        $page = $page->translate($locale, $fallbackLocale);
        return view('pages.about.index', compact(
            'page', 
            'services', 
            'personals', 
            'icons',
            'about_content'
        ));
    }

    public function show($article) 
    {
        $locale = session()->get('locale');
        $fallbackLocale = config('voyager.multilingual.default');

        $about = About::with(['translations'])
            ->where('slug', $article)
            ->where('status', true)
            ->first();
        $about = $about->translate($locale, $fallbackLocale);

        $page = Page::with(['translations'])->where(['type' => 'about'])->firstOrFail();
        $page = $page->translate($locale, $fallbackLocale);
        return view('pages.about.show', compact('page', 'about'));
    }
}
