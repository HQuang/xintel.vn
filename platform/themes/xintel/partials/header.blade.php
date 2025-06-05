<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=5, user-scalable=1" name="viewport"/>
        <meta name="format-detection" content="telephone=no">
        <meta name="mobile-web-app-capable" content="yes">
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

