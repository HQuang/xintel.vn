<footer class="main-footer">
    <div class="auto-container">
        <!-- Widgets Section -->
        <div class="widgets-section">
            <div class="row clearfix">

                <!-- Footer Column -->
                <div class="footer-column col-lg-8 col-md-12 col-sm-12">
                    <div class="footer-text">{!! theme_option('footer_text','<b>XIN Ecosystem</b> <br> Explore the world and begin your transformation journey in a fairer and more convenient way with XIN.') !!}</div>
                    <h2>{{ theme_option('footer_contact_heading','Contact Us') }}
                        <br>
                        <a href="mailto:{{ theme_option('footer_contact_email','support@xintel.co') }}">{{ theme_option('footer_contact_email','support@xintel.co') }}</a>
                    </h2>
                    <ul class="footer_socials">
                        <li><a href="{{ theme_option('footer_telegram_link','https://t.me/educhainchannel') }}" target="_blank">
                            @if (theme_option('footer_telegram_icon'))
                                <img src="{{ RvMedia::getImageUrl(theme_option('footer_telegram_icon')) }}" alt="Telegram">
                            @else
                                <img src="{{ Theme::asset()->url('images/icons/tele.png') }}" alt="Telegram">
                            @endif
                        </a></li>
                        <li><a href="{{ theme_option('footer_facebook_link','https://www.facebook.com/profile.php?id=61561928653091&mibextid=LQQJ4d') }}" target="_blank">
                            @if (theme_option('footer_facebook_icon'))
                                <img src="{{ RvMedia::getImageUrl(theme_option('footer_facebook_icon')) }}" alt="Facebook">
                            @else
                                <img src="{{ Theme::asset()->url('images/icons/fb.png') }}" alt="Facebook">
                            @endif
                        </a></li>
                        <li><a href="{{ theme_option('footer_youtube_link','https://www.youtube.com/channel/UC3dwgM2BCAcKXuzSsdw-1dQ') }}" target="_blank">
                            @if (theme_option('footer_youtube_icon'))
                                <img src="{{ RvMedia::getImageUrl(theme_option('footer_youtube_icon')) }}" alt="YouTube">
                            @else
                                <img src="{{ Theme::asset()->url('images/icons/ytb.png') }}" alt="YouTube">
                            @endif
                        </a></li>
                        <li><a href="{{ theme_option('footer_tiktok_link','https://www.tiktok.com/@educhainglobal?is_from_webapp=1&sender_device=pc') }}" target="_blank">
                            @if (theme_option('footer_tiktok_icon'))
                                <img src="{{ RvMedia::getImageUrl(theme_option('footer_tiktok_icon')) }}" alt="TikTok">
                            @else
                                <img src="{{ Theme::asset()->url('images/icons/tiktok.png') }}" alt="TikTok">
                            @endif
                        </a></li>
                        <li><a href="{{ theme_option('footer_twitter_link','https://x.com/educhainglobal?t=1716396000&s=09') }}" target="_blank">
                            @if (theme_option('footer_twitter_icon'))
                                <img src="{{ RvMedia::getImageUrl(theme_option('footer_twitter_icon')) }}" alt="Twitter/X">
                            @else
                                <img src="{{ Theme::asset()->url('images/icons/x.png') }}" alt="Twitter/X">
                            @endif
                        </a></li>
                        <li><a href="{{ theme_option('footer_chat3_link','#') }}" target="_blank">
                            @if (theme_option('footer_chat3_icon'))
                                <img src="{{ RvMedia::getImageUrl(theme_option('footer_chat3_icon')) }}" alt="Chat3">
                            @else
                                <img src="{{ Theme::asset()->url('images/icons/bluesky.png') }}" alt="Bluesky">
                            @endif
                        </a></li>
                    </ul>
                </div>

                <!-- Footer Column -->
                {!! Menu::renderMenuLocation('main-menu', [
                    'options' => [],
                    'theme' => true,
                    'view' => 'footer-menu',
                ]) !!}

            </div>
        </div>
    </div>
    <div class="footer-bottom">
        <div class="auto-container">
            <div class="d-flex justify-content-between align-items-center flex-wrap">
                <div class="footer_copyright">{!! theme_option('copyright') !!}</div>
                <a class="backtop down-box scroll-to-target" data-target=".main-header">
                    <i class="fa-solid fa-arrow-up"></i>
                </a>
            </div>
        </div>
    </div>
</footer>

<!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script><![endif]-->
<!--[if lt IE 9]><script src="{{ Theme::asset()->url('js/respond.js') }}"></script><![endif]-->
{!! Theme::footer() !!}
</body>

</html>
