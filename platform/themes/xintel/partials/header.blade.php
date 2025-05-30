<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=5, user-scalable=1" name="viewport"/>
        <meta name="format-detection" content="telephone=no">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="author" content="HongQuang.Dev">

        <!-- Fonts-->
        <link href="https://fonts.googleapis.com/css?family={{ urlencode(theme_option('primary_font', 'Roboto')) }}" rel="stylesheet" type="text/css">
        <!-- CSS Library-->

        <style>
            :root {
                --primary-color: {{ theme_option('primary_color', '#ff2b4a') }};
                --primary-font: '{{ theme_option('primary_font', 'Roboto') }}', sans-serif;
            }
        </style>

        <style>
            body {
                font-family: 'Inter', sans-serif;
                min-height: 100vh;
                overflow-x: hidden; /* Prevent horizontal scroll from animations */
            }
            .hero-bg {
                background: linear-gradient(135deg, #10102c 0%, #0A0A1A 100%); /* Dark blue/purple gradient */
                color: white; /* Default text color */
            }
            .btn-custom-gradient {
                background: linear-gradient(90deg, #FF8C42, #FF5C5C); /* Orange to Pinkish-Red gradient */
                border: none;
                transition: transform 0.3s ease, background 0.3s ease;
            }
            .btn-custom-gradient:hover {
                background: linear-gradient(90deg, #FF5C5C, #FF8C42);
                transform: scale(1.05);
            }

            .text-gradient-custom {
                background: linear-gradient(to right, #FF5C5C, #FF8C42, #FACC15); /* Pink to Orange to Yellow */
                -webkit-background-clip: text;
                -webkit-text-fill-color: transparent;
                background-clip: text;
                text-fill-color: transparent;
            }

            /* Decorative circles */
            .deco-circle-container {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                overflow: hidden; /* Keep circles contained if they go too far */
                pointer-events: none; /* Allow clicks to pass through */
            }
            .deco-circle {
                position: absolute;
                border-radius: 50%;
                opacity: 0.7;
                animation: float 6s ease-in-out infinite;
            }

            .deco-circle-1 {
                width: 20px;
                height: 20px;
                background-color: #A855F7; /* Purple */
                top: 15%;
                left: 20%;
            }
            .deco-circle-2 {
                width: 30px;
                height: 30px;
                background-color: #EC4899; /* Pink */
                top: 25%;
                right: 18%;
            }
            .deco-circle-3 {
                width: 25px;
                height: 25px;
                background-color: #FACC15; /* Yellow */
                bottom: 20%;
                left: 22%;
            }
            .deco-circle-4 {
                width: 15px;
                height: 15px;
                background-color: #3B82F6; /* Blue */
                bottom: 30%;
                right: 25%;
            }

            @keyframes float {
                0% {
                    transform: translateY(0px);
                }
                50% {
                    transform: translateY(-15px);
                }
                100% {
                    transform: translateY(0px);
                }
            }

            /* Adjust heading sizes for different breakpoints if needed */
            .display-custom-1 { font-size: calc(1.5rem + 3vw); } /* EXPERIENCE */
            .display-custom-2 { font-size: calc(1.8rem + 4vw); } /* XINSTAR TODAY */

            @media (min-width: 992px) { /* lg breakpoint */
                .display-custom-1 { font-size: 4.5rem; } /* Corresponds to ~text-7xl */
                .display-custom-2 { font-size: 6rem; } /* Corresponds to ~text-8xl */
            }


            /* Mobile adjustments for circles */
            @media (max-width: 767px) { /* md breakpoint (Bootstrap) */
                .deco-circle-1 { top: 10%; left: 10%; width: 15px; height: 15px;}
                .deco-circle-2 { top: 18%; right: 10%; width: 20px; height: 20px;}
                .deco-circle-3 { bottom: 15%; left: 12%; width: 18px; height: 18px;}
                .deco-circle-4 { bottom: 22%; right: 15%; width: 12px; height: 12px;}

                .display-custom-1 { font-size: calc(1.4rem + 2.5vw); }
                .display-custom-2 { font-size: calc(1.6rem + 3.5vw); }
            }
        </style>

        {!! Theme::header() !!}
    </head>
    <body @if (BaseHelper::isRtlEnabled()) dir="rtl" @endif>
        {!! apply_filters(THEME_FRONT_BODY, null) !!}

        <div class="cs_preloader cs_center cs_hero_shapes_1">
            <div class="cs_preloader_in"></div>
            <span>Loading</span>
        </div>

        <!-- Start Header Section -->
        <header class="cs_site_header cs_style_1 cs_primary_color cs_sticky_header">
            <div class="cs_main_header">
                <div class="container">
                    <div class="cs_main_header_in">
                        <div class="cs_main_header_left">
                            <a class="cs_site_branding" href="{{ BaseHelper::getHomepageUrl() }}">
                                @if ($logo = theme_option('logo'))
                                    {{ RvMedia::image($logo, theme_option('site_title'), attributes: ['width' => 125]) }}
                                @else
                                    <img src="{{ Theme::asset()->url('images/logo.png') }}" alt="Logo">
                                @endif
                            </a>
                        </div>
                        <div class="cs_main_header_center">
                            <div class="cs_nav text-uppercase">
                                {!!
                                    Menu::renderMenuLocation('main-menu', [
                                        'options' => ["class" => "cs_nav_list"],
                                        'view'    => 'main-menu',
                                    ])
                                !!}
                            </div>
                        </div>
                        <div class="cs_main_header_right">
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
        </header>
        <!-- End Header Section -->

