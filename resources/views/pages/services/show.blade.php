@extends('partials.layout')
@section('page_title',(strlen($service->title) > 1 ? $service->title : ''))
@section('seo_title', (strlen($service->seo_title) > 1 ? $service->seo_title : ''))
@section('meta_keywords',(strlen($service->meta_keywords) > 1 ? $service->meta_keywords : ''))
@section('meta_description', (strlen($service->meta_description) > 1 ? $service->meta_description : ''))
@section('image','')
@section('url',url()->current())
@section('page_class','page')
@section('content')
  
<section class="navigation">
    <div class="container">

        @include('partials.breadcrumbs', [
            'title' => $page->title,
            'linktitle' => '/services',
            'subtitle' => $service->title,
        ])

        <div class="navigation__title">
            <h1 class="title">{{ $service->title }}</h1>
            <p>{{ $service->excerpt }} </p>
        </div>
    </div>
</section>

<section class="sample">
    <div class="container">
        <img src="{{ Voyager::image($service->image) }}" class="sample__main-img" alt="{{ $service->title }}">
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
                <ul>
                    @foreach($services as $s)
                        <li><a href="{{ route('services.show', ['article' => $s->slug]) }}" @if($s->title ==  $service->title) class="active" @endif>
                                {{ $s->title }}
                            </a>
                        </li>
                    @endforeach
                </ul>
            </div>
            <div class="sample__info">
                <div class="editors">
                    {!! $service->content !!}
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