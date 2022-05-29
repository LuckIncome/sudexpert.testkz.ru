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
            <h1 class="title">{{ $about_content->title }}</h1>
            <p>{{ $about_content->excerpt }} </p>
        </div>
    </div>
</section>

<section class="sample">
    <div class="container">
        <img src="{{ Voyager::image($about_content->image) }}" class="sample__main-img" alt="{{ $about_content->title }}">
        <div class="sample__content">
            <div class="sample__menu" :class="{'sample__menu-show':isMenuPage}">
                <div v-if="isMenuPage" class="sidebar__head">
                    <a href="/" class="sidebar__logo">
                        <img src="{{ asset('assets/images/icons/favicon.svg') }}" alt="img">
                    </a>
                    <button class="sidebar__toggle" @click="toggleWrapper">
                        <i class="bi bi-x"></i>
                    </button>
                </div>
                <h3>@lang('general.ourServices'):</h3>
                <ul>
                	@foreach($services as $s)
                        <li>
                        	<a href="{{ route('services.show', ['article' => $s->slug]) }}">
                                {{ $s->title }}
                            </a>
                        </li>
                    @endforeach
                </ul>
            </div>
            <div class="sample__info">
                <div class="editors">
                    {!! $about_content->content !!}
                </div>

                <div class="about__advantages">
                    @foreach($icons as $icon)
	                    <div class="about__item">
	                        <img src="{{ Voyager::image($icon->icon) }}" alt="{{ $icon->title }}">
	                        <p>{{ $icon->title }}</p>
	                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</section>

<button @click="toggleMenuPage" class="sample__menu-toggle">
    <i class="bi bi-list"></i>
</button>

<section class="experts-page">
    <div class="container">
        <h2 class="title">@lang('general.ourExperts')</h2>
        <div class="experts__items">
        	@foreach($personals as $personal)
	            <div class="experts__item">
	                <img src="{{ Voyager::image($personal->image) }}" alt="{{ $personal->name }}">
	                <h3>{{ $personal->name }}</h3>
	                <p>
	                    {{ $personal->position }} <br>
	                    {{ $personal->experience }}
	                </p>
	            </div>
            @endforeach
        </div>
        <div class="experts-page__order">
            <button @click="toggleModalLeaveFeedback">@lang('general.orderExamination')</button>
            <div>
                <p>@lang('general.makeRequestWebsite')</p>
                <p>@lang('general.ourExpertDetails') </p>
            </div>
        </div>
    </div>
</section>

@endsection