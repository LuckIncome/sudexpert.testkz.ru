<?php

namespace App\Http\Controllers;

use TCG\Voyager\Models\Page;
use App\Models\Service;
use App\Models\Personal;

use Illuminate\Http\Request;

class ServiceController extends Controller
{
    public function index()
    {
        $locale = session()->get('locale');
        $fallbackLocale = config('voyager.multilingual.default');

        $services = Service::with(['translations'])
            ->where('status', true)
            ->orderBy('created_at', 'desc')
            ->paginate(10)
            ->translate($locale, $fallbackLocale);

        $service_pagination = Service::where('status', true)
            ->orderBy('created_at', 'desc')
            ->paginate(10);

        $page = Page::with(['translations'])->where(['type' => 'services'])->firstOrFail();
        $page = $page->translate($locale, $fallbackLocale);
        return view('pages.services.index', compact('page', 'services', 'service_pagination'));
    }

    public function show($article)
    {
        $locale = session()->get('locale');
        $fallbackLocale = config('voyager.multilingual.default');

        $service = Service::with(['translations'])
            ->where('slug', $article)
            ->where('status', true)
            ->first();
        $service = $service->translate($locale, $fallbackLocale);

        $services = Service::with(['translations'])
            ->where('status', true)
            ->orderBy('created_at', 'desc')
            ->get()
            ->translate($locale, $fallbackLocale);

        $page = Page::with(['translations'])->where(['type' => 'services'])->firstOrFail();
        $page = $page->translate($locale, $fallbackLocale);
        return view('pages.services.show', compact('page', 'service', 'services'));
    }
}
