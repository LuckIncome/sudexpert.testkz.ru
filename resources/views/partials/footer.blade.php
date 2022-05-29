<footer class="footer">
    <div class="container">
        <div class="footer__top">
            <div class="footer__info">
                <a href="/">
                    <img src="{{ Voyager::image(setting('site.favicon')) }}" alt="sudexpert logo">
                </a>
                <p>
                    @lang('general.footerDesc')
                </p>
            </div>
            <div class="footer__expertise">
                <h3>@lang('general.kinds') @lang('general.expertise')</h3>
                
                {{ menu('footer_expertise','vendor.voyager.menu.footer_expertise') }}

            </div>

            {{ menu('footer_menu','vendor.voyager.menu.footer_menu') }}

            <div class="footer__contact">
                <div class="footer__item">
                    <img src="{{ asset('assets/images/icons/call-2.svg') }}" alt="call">
                    <div>
                        <a href="tel:{{ preg_replace("/[^,.0-9]/", '', $phone->link) }}">{{ $phone->value }}</a>
                        <br>
                        <button @click="toggleModalLeaveFeedback">@lang('general.orderCall')</button>
                    </div>
                </div>
                <div class="footer__item">
                    <img src="{{ asset('assets/images/icons/geo.svg') }}" alt="geo">
                    <div>
                        <p>{{ $adress->translate_value }}</p>
                    </div>
                </div>
                <div class="footer__item">
                    <img src="{{ asset('assets/images/icons/email.svg') }}" alt="email">
                    <div>
                        <a href="mailto:{{ $email->link }}">{{ $email->value }}</a>
                    </div>
                </div>
                <ul class="footer__network">

                    @foreach($socials as $social)
                    <li>
                        <a href="{{ $social->link }}">
                            @if($social->sort_id == 1)
                            <img src="{{ asset('assets/images/icons/whatsapp.svg') }}" alt="{{ $social->value }}">
                            @endif
                            @if($social->sort_id == 2)
                            <img src="{{ asset('assets/images/icons/instagram.svg') }}" alt="{{ $social->value }}">
                            @endif
                        </a>
                    </li>
                    @endforeach
                </ul>
            </div>
        </div>
        <div class="footer__bottom">
            <p>© {{ date('Y') }} @lang('general.forensicExperts')</p>
            <p>@lang('general.allRightsReserved')</p>
            <a href="/policy">@lang('general.privacyPolicy')</a>
            <p>@lang('general.developedBy') 
                <a href="https://i-marketing.kz">
                    <img src="{{ asset('assets/images/icons/im-logo.svg') }}" alt="i-marketing.kz">
                </a>
            </p>
        </div>
    </div>
</footer>