<!-- Start Footer Section -->
{{--<footer class="cs_footer cs_bg_filed cs_shape_wrap cs_footer_shapes_1" data-src="{{ Theme::asset()->url('images/footer_bg.png') }}">--}}
<footer class="cs_footer cs_bg_filed cs_shape_wrap cs_footer_shapes_1">
    <div class="container wow fadeIn" data-wow-duration="1s" data-wow-delay="0.35s">
        <div class="cs_footer_row">
            <div class="cs_footer_col" style="flex-grow: 3; align-self: flex-start;">
                <div class="cs_footer_widget">
                    <div class="cs_text_widget">
                        @if ($logo = theme_option('logo'))
                            {{ RvMedia::image($logo, theme_option('site_title'), attributes: ['width' => 125]) }}
                        @else
                            <img src="{{ Theme::asset()->url('images/logo.png') }}" alt="Logo">
                        @endif
                        <p>{!! theme_option('footer_site_description') !!}</p>
                        <div class="cs_social_btns">
                            @if ($socialLinks = Theme::getSocialLinks())
                                <ul class="list-wrap">
                                    <li class="header-social">
                                        @foreach($socialLinks as $socialLink)
                                            @continue(! $icon = $socialLink->getIconHtml())
                                            <a {{ $socialLink->getAttributes() }}>
                                                {{ $icon }}
                                            </a>
                                        @endforeach
                                    </li>
                                </ul>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
            <div class="cs_footer_col" style="flex-grow: 1;">
                <div class="cs_footer_widget">
                    {!!
                        Menu::renderMenuLocation('footer-menu', [
                            'options' => ["class" => "cs_footer_menu"],
                            'view'    => 'footer-menu',
                        ])
                    !!}
                </div>
            </div>
            <div class="cs_footer_col" style="flex-grow: 1;">
                <div class="cs_footer_widget">
                    <h2 class="cs_footer_widget_title">Subscribe us</h2>
                    <form action="{{ route('public.send.contact') }}" method="post" class="cs_newsletter">
                        @csrf
                        <input type="email" name="email" value="{{ old('email') }}" class="cs_newsletter_input" placeholder="{{ __('Email Here') }}" required>
                        <input type="hidden" name="content" value="Newsletter" >
                        <input type="hidden" name="name" value="" >
                        <button class="cs_newsletter_btn"><i class="fa-solid fa-paper-plane"></i></button>

                        <div class="contact-message contact-success-message" style="display: none"></div>
                        <div class="contact-message contact-error-message" style="display: none"></div>
                    </form>
                </div>
            </div>
        </div>
        <div class="cs_footer_bottom">
            <p class="mb-0 cs_copyright">
                @if (theme_option('copyright'))
                    {{ theme_option('copyright') }}
               @endif
            </p>
            {!!
                Menu::renderMenuLocation('footer-menu-bottom', [
                    'options' => ["class" => "cs_footer_menu"],
                    'view'    => 'footer-menu',
                ])
            !!}
        </div>
    </div>
</footer>
<!-- End Footer Section -->

{!! Theme::footer() !!}
</body>

</html>
