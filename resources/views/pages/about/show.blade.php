@extends('partials.layout')
@section('page_title',(strlen($about->title) > 1 ? $about->title : ''))
@section('seo_title', (strlen($about->seo_title) > 1 ? $about->seo_title : ''))
@section('meta_keywords',(strlen($about->meta_keywords) > 1 ? $about->meta_keywords : ''))
@section('meta_description', (strlen($about->meta_description) > 1 ? $about->meta_description : ''))
@section('image','')
@section('url',url()->current())
@section('page_class','page')
@section('content')

<section class="navigation">
    <div class="container">
        @include('partials.breadcrumbs', [
            'title' => $page->title,
            'linktitle' => '/about',
            'subtitle' => $about->title,
        ])
    </div>
</section>

<section class="act">
    <div class="container">
        <div class="act__box">
            {{--<p class="data">{{ date('d.m.Y', strtotime($about->created_at)) }}</p>--}}
            <h1 class="title">{{ $about->title }}</h1>
            <div class="editors">
                {!! $about->content !!}
            </div>
        </div>
    </div>
</section>

@endsection