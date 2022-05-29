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

<section class="contacts">
    <div class="container">
        <div class="contacts__info">
            <div class="item">
                <div class="item__block">
                    <img src="{{ asset('assets/images/icons/geo-1.svg') }}" alt="icon">
                    <div>
                        <a href="/contacts">
                        	{{ $adress->translate_value }}
                        </a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="item__block">
                    <img src="{{ asset('assets/images/icons/call-3.svg') }}" alt="call">
                    <div>
                    	@foreach($phones as $phone)
	                        <a href="tel:{{ preg_replace("/[^,.0-9]/", '', $phone->link) }}">{{ $phone->value }}</a>
                        @endforeach
                    </div>
                </div>
                <div class="item__block">
                    <img src="{{ asset('assets/images/icons/email-2.svg') }}" alt="email">
                    <div>
                        <a href="mailto:{{ $email->link }}">{{ $email->value }}</a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="item__block">
                    <img src="{{ asset('assets/images/icons/calendar.svg') }}" alt="calendar">
                    <div>
                        {!! $graph->translate_value !!}
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="item__block">
                	@foreach($socials as $social)
                    	<a href="{{ $social->link }}"><img src="{{ Voyager::image($social->icon) }}" alt="{{ $social->value }}"></a>
                    @endforeach
                </div>
            </div>
        </div>
        <div class="contacts__maps">
            {!! $map->value !!}
        </div>
    </div>
</section>

@endsection