@extends('partials.layout')
@section('page_title', __('general.pageNotFound'))
@section('seo_title',  __('general.pageNotFound'))
@section('meta_keywords', __('general.pageNotFound'))
@section('meta_description',  __('general.pageNotFound'))
@section('image',env('APP_URL').'/images/og.jpg')
@section('url',url()->current())
@section('page_class','page')
@section('content')

<section class="error">
    <div class="container">
        <img src="{{ asset('assets/images/icons/error.svg') }}" alt="error">
        <h3>@lang('general.pageWasNotFound') </h3>
        <a href="/">@lang('general.goToTheMainPage')</a>
    </div>
</section>

@endsection