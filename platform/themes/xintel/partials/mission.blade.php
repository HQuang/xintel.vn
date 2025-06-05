<section class="cs_history cs_style_1 cs_shape_wrap cs_history_shapes_1 position-relative" id="{{ theme_option('opt-mission-section_id') }}">
    <div class="cs_shape cs_shape_position_1"></div>
    <div class="cs_shape cs_shape_position_2"></div>
    <div class="cs_height_120 cs_height_lg_80"></div>
    <div class="container">
        <div class="cs_section_heading cs_style_1 text-center wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.2s">
            <h2 class="cs_section_title mb-0">{{ theme_option('opt-mission-section_heading') }}</h2>
        </div>
        <div class="cs_height_50 cs_height_lg_50"></div>
        <div class="row cs_gap_y_30 align-items-center">
            <div class="col-lg-6 wow fadeInLeft" data-wow-duration="1s" data-wow-delay="0.4s">
                <div class="cs_hostory_thumbnail">
                    <img src="{{ RvMedia::getImageUrl(theme_option('opt-mission-section_image_left')) }}" alt="Image">
                </div>
            </div>
            <div class="col-lg-6 wow fadeIn" data-wow-duration="1s" data-wow-delay="0.3s">
                <div class="cs_history_content">
                    {{ BaseHelper::html(theme_option('opt-mission-section_description')) }}
                </div>
            </div>
        </div>
    </div>
</section>

