<!-- Сайд-бар -->
<div class="sidebar" :class="{'sidebar-show': isSidebar}">
    <div class="sidebar__head">
        <a href="/" class="sidebar__logo">
            <img src="{{ Voyager::image(setting('site.favicon')) }}" alt="sudexpert logo">
        </a>
        <button class="sidebar__toggle" @click="toggleWrapper">
            <i class="bi bi-x"></i>
        </button>
    </div>
    <div class="sidebar__body">

        {{ menu('header_menu','vendor.voyager.menu.mobile_header_menu') }}

        <ul class="sidebar__lang">
            <li><a href="/locale/ru" @if(session()->get('locale') == 'ru') class="active" @endif>Рус</a></li>
            <li><a href="/locale/kz" @if(session()->get('locale') == 'kz') class="active" @endif>Каз</a></li>
            <li><a href="/locale/en" @if(session()->get('locale') == 'en') class="active" @endif>Eng</a></li>
        </ul>
        <div class="sidebar__feedback">
            <a href="{{ preg_replace("/[^,.0-9]/", '', $phone->link) }}">{{ $phone->value }}</a>
            <button>@lang('general.getConsultation')</button>
        </div>
    </div>
</div>
<!-- /Сайд-бар -->