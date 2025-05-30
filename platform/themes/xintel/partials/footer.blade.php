<!-- Start Footer Section -->
<footer class="cs_footer cs_bg_filed cs_shape_wrap cs_footer_shapes_1" data-src="{{ Theme::asset()->url('images/footer_bg.png') }}">
    <div class="cs_shape cs_shape_position_1"></div>
    <div class="container">
        <div class="cs_cta cs_style_1 wow fadeIn" data-wow-duration="1s" data-wow-delay="0.2s">
            <img src="{{ Theme::asset()->url('images/cta_img_1.png') }}" alt="CTA Image" class="cs_cta_img">
            <div class="cs_cta_in">
                <h2 class="cs_cta_title">Join our community for Update News</h2>
                <p class="cs_cta_subtitle">It has survived not only five centuries, but also the leap into electronic
                    remaining essentially unchanged</p>
                <a href="#" class="cs_btn cs_style_1"><span>Join Now</span></a>
            </div>
        </div>
    </div>
    <div class="container wow fadeIn" data-wow-duration="1s" data-wow-delay="0.35s">
        <div class="cs_footer_row">
            <div class="cs_footer_col">
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
                            <a href="#" class="cs_center"><i class="fa-brands fa-facebook-f"></i></a>
                            <a href="#" class="cs_center"><i class="fa-brands fa-instagram"></i></a>
                            <a href="#" class="cs_center"><i class="fa-brands fa-telegram"></i></a>
                            <a href="#" class="cs_center"><i class="fa-brands fa-linkedin-in"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="cs_footer_col">
                <div class="cs_footer_widget">
                    <h2 class="cs_footer_widget_title">My Account</h2>
                    <ul class="cs_footer_menu">
                        <li><a href="#">Authors</a></li>
                        <li><a href="#">Collection</a></li>
                        <li><a href="#">Author Profile</a></li>
                        <li><a href="#">Create Collection</a></li>
                    </ul>
                </div>
            </div>
            <div class="cs_footer_col">
                <div class="cs_footer_widget">
                    <h2 class="cs_footer_widget_title">Resource</h2>
                    <ul class="cs_footer_menu">
                        <li><a href="#">Help & Support</a></li>
                        <li><a href="#">Live Actions</a></li>
                        <li><a href="#">Item Details</a></li>
                        <li><a href="#">Activity</a></li>
                    </ul>
                </div>
            </div>
            <div class="cs_footer_col">
                <div class="cs_footer_widget">
                    <h2 class="cs_footer_widget_title">Company</h2>
                    <ul class="cs_footer_menu">
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Contact Us</a></li>
                        <li><a href="#">Our Blog</a></li>
                        <li><a href="#">Discover</a></li>
                    </ul>
                </div>
            </div>
            <div class="cs_footer_col">
                <div class="cs_footer_widget">
                    <h2 class="cs_footer_widget_title">Subscribe us</h2>
                    <form action="#" class="cs_newsletter">
                        <input type="text" placeholder="Email Here" class="cs_newsletter_input">
                        <button class="cs_newsletter_btn"><i class="fa-solid fa-paper-plane"></i></button>
                    </form>
                </div>
            </div>
        </div>
        <div class="cs_footer_bottom">
            <p class="mb-0 cs_copyright">Copyright 2023 ©renft | All Right Reserved</p>
            <ul class="cs_footer_menu">
                <li><a href="#">Privacy & Policy</a></li>
                <li><a href="#">Terms & Conditions</a></li>
            </ul>
        </div>
    </div>
</footer>
<!-- End Footer Section -->

{!! Theme::footer() !!}
</body>

</html>
