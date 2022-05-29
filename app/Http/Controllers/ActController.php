<?php

namespace App\Http\Controllers;

use TCG\Voyager\Models\Page;
use App\Models\Act;

use Illuminate\Http\Request;

class ActController extends Controller
{
    public function index() 
    {
        $locale = session()->get('locale');
        $fallbackLocale = config('voyager.multilingual.default');

        $acts = Act::with(['translations'])
            ->where('status', true)
            ->orderBy('created_at', 'desc')
            ->paginate(9)
            ->translate($locale, $fallbackLocale);

        $act_paginate = Act::where('status', true)
            ->orderBy('created_at', 'desc')
            ->paginate(9);

        $page = Page::with(['translations'])->where(['type' => 'acts'])->firstOrFail();
        $page = $page->translate($locale, $fallbackLocale);
        return view('pages.acts.index', compact('page', 'acts', 'act_paginate'));
    }

    public function show(Request $request, $article) 
    {
        $locale = session()->get('locale');
        $fallbackLocale = config('voyager.multilingual.default');

        $act = Act::with(['translations'])
            ->where('slug', $article)
            ->where('status', true)
            ->first();
        $act = $act->translate($locale, $fallbackLocale);   

        $acts = Act::with(['translations'])
            ->where('slug', '!=', $article)
            ->where('status', true)
            ->orderBy('created_at', 'desc')
            ->paginate(3)
            ->translate($locale, $fallbackLocale);
  
        if($request->ajax()) {
            $view = view('partials.loops.articles', compact('acts'))->render();
            return response()->json(['html'=>$view]);
        }

        $page = Page::with(['translations'])->where(['type' => 'acts'])->firstOrFail();
        $page = $page->translate($locale, $fallbackLocale);
        return view('pages.acts.show', compact('page', 'act', 'acts'));
    }
}
