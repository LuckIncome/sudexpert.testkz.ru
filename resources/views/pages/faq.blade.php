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

<section class="questions">
    <div class="container">
        <div class="questions__content">
            <div class="questions__info">
                <div class="questions__items">
                	
                	@foreach($faqs as $faq)
	                    <div class="questions__item">
	                        <button @click="toggleQuestions({{ $faq->id }})" :class="{'questions-show':valueQuestions == {{ $faq->id }}}">
	                            <span>{{ $faq->question }}</span>
	                            <i class="arrow"></i>
	                        </button>
	                        <transition name="fade">
	                            <div class="questions__body" v-if="valueQuestions == {{ $faq->id }}">
	                                {!! $faq->answer !!}
	                            </div>
	                        </transition>
	                    </div>
                    @endforeach           

                </div>
            </div>
            <form id="feedback_faq" action="{{ route('c_feedback') }}" method="POST">
                <h3>@lang('general.needConsultation')</h3>
                <label>@lang('general.leaveYourNumberQuestions')</label>
                <input required type="text" name="phone" @click="phoneValue(event)" placeholder="@lang('general.phoneNumber')*" v-maska="['+7 (###) ##-##-##', '+7 (###) ###-##-##']">
                <input type="hidden" name="url" value="{{\Request::url()}}">
                <button>@lang('general.callBack')</button>
            </form>
        </div>
    </div>
</section>

@endsection