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
            <h1 class="title">@lang('general.typesExaminations')</h1>
        </div>
    </div>
</section>

<section class="services">
    <div class="container">
        
        @foreach($services as $service)
	        <div class="services__item">
	            <img src="{{ Voyager::image($service->image) }}" alt="{{ $service->title }}">
	            <div>
	                <h3>{{ $service->title }}</h3>
	                <p>{{ \Illuminate\Support\Str::limit($service->excerpt, 244,'...') }}</p>
	                <a href="{{ route('services.show', ['article' => $service->slug]) }}">Подробнее</a>
	            </div>
	        </div>
        @endforeach

    </div>
</section>

@if($service_pagination)
<section class="pagination">
    {{ $service_pagination->links('partials.paginate') }}
</section>
@endif 

@endsection