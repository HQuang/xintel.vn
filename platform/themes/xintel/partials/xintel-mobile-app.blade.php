<section class="cs_hero cs_style_1 cs_center cs_shape_wrap cs_hero_shapes_1" id="{{ theme_option('opt-xintel-mobile-app-section_id') }}">
    <div class="cs_shape cs_shape_position_1"></div>
    <div class="cs_shape cs_shape_position_2"></div>
    <div class="container">
        <div class="cs_hero_in wow fadeInLeft" data-wow-duration="1s" data-wow-delay="0.35s">
            <h1 class="cs_hero_title">{{ theme_option('opt-xintel-mobile-app-section_heading') }}</h1>
            <p class="cs_hero_subtitle">{{ theme_option('opt-xintel-mobile-app-section_left_text') }}</p>
            <div class="cs_hero_btns">
                @php
                    $appInfor = theme_option('opt-xintel-mobile-app-section_icon_download_app');
                    $appInfor = json_decode($appInfor, true);
                    $newAppInfor = [];
                    if ($appInfor) {
                        foreach ($appInfor as $item) {
                            $newAppInfor[] = Arr::pluck($item, 'value', 'key');
                        }
                    }
                @endphp

                @foreach ($newAppInfor as $app)
                    <a href="{{ $app['url'] }}" class="hqd_btn_app_img">
                        <img src="{{ RvMedia::getImageUrl($app['logo']) }}">
                    </a>
                @endforeach
            </div>
        </div>
        <div class="hqd_hero_thumb cs_hero_thumb wow fadeIn" data-wow-duration="1s" data-wow-delay="0.2s"><img src="{{ RvMedia::getImageUrl(theme_option('opt-xintel-mobile-app-section_left_image')) }}" alt=""></div>
    </div>
{{--    <div class="cs_hero_shape"><img src="{{ Theme::asset()->url('images/hero_shape_1.svg') }}" alt=""></div>--}}
</section>
