<header class="header" :class="{'header-home':isIndex}">
    <div class="container">
        <a href="/" class="header__logo">
            <img src="{{ Voyager::image(setting('site.favicon')) }}" alt="sudexpert logo">
        </a>

        <button class="header__toggle" @click="toggleSidebar">
            <i class="bi bi-list"></i>
        </button>
        <div class="header__lang header__lang-active">
            <span>
                @if(session()->get('locale') == 'ru')<a href="/locale/ru">Рус</a> @endif
                @if(session()->get('locale') == 'kz')<a href="/locale/kz">Каз</a> @endif
                @if(session()->get('locale') == 'en')<a href="/locale/en">Eng</a> @endif
            </span>
            <ul>
                <li><a href="/locale/ru">Рус</a></li>
                <li><a href="/locale/kz">Каз</a></li>
                <li><a href="/locale/en">Eng</a></li>
            </ul>
        </div>
        
        {{menu('header_menu','vendor.voyager.menu.header_menu')}}

        <div class="header__feedback">
            <a href="tel:{{ preg_replace("/[^,.0-9]/", '', $phone->link) }}">{{ $phone->value }}</a>
            <button @click="toggleModalLeaveFeedback">@lang('general.getConsultation')</button>
        </div>
    </div>
</header>