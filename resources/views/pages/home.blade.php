@extends('partials.layout')
@section('page_title',(strlen($page->title) > 1 ? $page->title : ''))
@section('seo_title', (strlen($page->seo_title) > 1 ? $page->seo_title : ''))
@section('meta_keywords',(strlen($page->meta_keywords) > 1 ? $page->meta_keywords : ''))
@section('meta_description', (strlen($page->meta_description) > 1 ? $page->meta_description : ''))
@section('image','')
@section('url',url()->current())
@section('page_class','page')
@section('content')
   
<section class="banner">
	<img src="{{ Voyager::image($banner->image) }}" class="banner__bg" alt="{{ $banner->title }}">
    <div class="container">
        <h1>{{ $banner->title }}</h1>
        <div class="banner-face">{{ session()->get('locale') }}</div>
        <p>{{ $banner->subtitle }}</p>
        <form>
            <div class="select">
                <select class="select-opt" id="sel-opt">

                    <option>@lang('general.typeActivity')</option> <!-- в Js -->
                    @foreach($services as $service)
                        <option value="{{ route('services.show', ['article' => $service->slug]) }}">
                            {{ $service->title_main_page }}
                        </option>
                    @endforeach
                </select>
            </div>
            <a :href="selectValue">@lang('general.orderExamination')</a>
        </form>
    </div>
</section>

<section class="expertise">
    <div class="container">
        <h2 class="title">@lang('general.kinds') <span>@lang('general.expertise') </span></h2>
    </div>
    <div class="expertise__wrapper">
        <div class="container">
            <div class="expertise__items">
                @foreach($services as $service)
                    @if($service->icon_main_page)
                    <a href="{{ route('services.show', ['article' => $service->slug]) }}">
                        <img src="{{ Voyager::image($service->icon_main_page) }}" alt="{{ $service->title_main_page }}">
                        <span>{{ $service->title_main_page }} </span>
                    </a>
                    @endif
                @endforeach              
            </div>
        </div>
    </div>
</section>

<section class="about">
    <div class="container">
        <div class="about__content">
            <div class="about__info">
                <img src="{{ Voyager::image($block_about->icon) }}" alt="{{ $block_about->first_title }}">
                <h2 class="title">{{ $block_about->first_title }} <span>{{ $block_about->second_title }}</span></h2>
                <p>{{ $block_about->subtitle }}</p>
                <a href="/about">@lang('general.moreDetailed')</a>
            </div>
            <div class="about__images">
                <img src="{{ Voyager::image($block_about->first_image) }}" alt="{{ $block_about->first_alt_image }}">
                <img src="{{ Voyager::image($block_about->second_image) }}" alt="{{ $block_about->second_alt_image }}">
            </div>
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
</section>

@if($personals->count() != 0)
<section class="experts">
    <div class="container">
        <h2 class="title">@lang('general.ourExperts')</h2>
        <div class="experts__items">
            <button class="experts__arrows experts__arrows-left">
                <i class="bi bi-chevron-left"></i>
            </button>

            <div class="experts__slider">
                
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

            <button class="experts__arrows experts__arrows-right">
                <i class="bi bi-chevron-right"></i>
            </button>
        </div>
    </div>
</section>
@endif

<section class="acts">
    <div class="container">
        <h2 class="title">@lang('general.regulatoryActs')</h2>

        <div class="acts__items">
            <button class="acts__arrows acts__arrows-left">
                <i class="bi bi-chevron-left"></i>
            </button>

            <div class="acts__slider">
                
                @foreach($acts as $act)
                    <a class="acts-item" href="{{ route('acts.show', ['article' => $act->slug]) }}">
                        <img src="{{ Voyager::image($act->image) }}" alt="{{ $act->title }}">
                        <div>{{date('d.m.Y', strtotime($act->created_at))}}</div>
                        <h3>{{ $act->title }}</h3>
                        <p>{!! \Illuminate\Support\Str::limit(strip_tags($act->content), 133,'...') !!}</p>
                    </a>
                @endforeach
   
            </div>

            <button class="acts__arrows acts__arrows-right">
                <i class="bi bi-chevron-right"></i>
            </button>
        </div>

        <a href="/acts" class="acts__button">@lang('general.watchMore')</a>
    </div>
</section>

<section class="reviews">
    <div class="container">
        <h2 class="title">@lang('general.feedbackCustomers')</h2>

        <div class="reviews__items">
            <button class="reviews__arrows reviews__arrows-left">
                <i class="bi bi-chevron-left"></i>
            </button>

            <div class="reviews__slider">
                
                @foreach($reviews as $review)
                    <div class="reviews__item">
                        @if($review->image)
                            <img src="{{ Voyager::image($review->image) }}" alt="{{ $review->name }}"> 
                        @endif          
                        <div>
                            {!! $review->content !!}
                            <h3>{{ $review->name }}</h3>
                        </div>
                    </div>
                @endforeach

            </div>

            <button class="reviews__arrows reviews__arrows-right">
                <i class="bi bi-chevron-right"></i>
            </button>
        </div>

        <a href="/reviews" class="reviews__button">@lang('general.viewReviews')</a>
    </div>
</section>

<section class="questions">
    <div class="container">
        <h2 class="title">@lang('general.frequentQuestions')</h2>
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
                <a href="/faq">@lang('general.viewAll')</a>
            </div>
            <form id="feedback_faq" action="{{ route('f_feedback') }}" method="POST">
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
