@extends('partials.layout')
@section('page_title',(strlen($page->title) > 1 ? $page->title : ''))
@section('seo_title', (strlen($page->seo_title) > 1 ? $page->seo_title : ''))
@section('meta_keywords',(strlen($page->meta_keywords) > 1 ? $page->meta_keywords : ''))
@section('meta_description', (strlen($page->meta_description) > 1 ? $page->meta_description : ''))
@section('image','')
@section('url',url()->current())
@section('page_class','page')
@section('content')
   
<section class="navigation">
    <div class="container">

        @include('partials.breadcrumbs', ['title' => $page->title])

        <div class="navigation__title">
            <h1 class="title">{{ $page->title }}</h1>
        </div>
    </div>
</section>

<section class="acts-page">
    <div class="container">

    	@foreach($acts as $act)
	        <a class="acts-item" href="{{ route('acts.show', ['article' => $act->slug]) }}">
	            <img src="{{ Voyager::image($act->image) }}" alt="{{ $act->title }}">
	            <div>{{date('d.m.Y', strtotime($act->created_at))}}</div>
	            <h3>{{ $act->title }}</h3>
	            <p>{!! \Illuminate\Support\Str::limit(strip_tags($act->content), 133,'...') !!}</p>
	        </a>
        @endforeach

    </div>
</section>

@if($act_paginate)
<section class="pagination">
    {{ $act_paginate->links('partials.paginate') }}
</section>
@endif 

@endsection