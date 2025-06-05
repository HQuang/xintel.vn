<section class="cs_shape_wrap cs_team_shapes_1 position-relative" id="{{ theme_option('opt-products_section_id') }}">
    <div class="cs_shape cs_shape_position_1"></div>
    <div class="cs_shape cs_shape_position_2"></div>
    <div class="cs_height_120 cs_height_lg_80"></div>
    <div class="container">
        <div class="cs_section_heading cs_style_1 text-center wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.2s">
            <h2 class="cs_section_title mb-0">{{ theme_option('opt-products_section_handing') }}</h2>
        </div>
        <div class="cs_height_50 cs_height_lg_50"></div>
        <div class="cs_slider cs_style_1 cs_slider_gap_24 wow fadeIn" data-wow-duration="1s" data-wow-delay="0.35s">
            <div class="cs_slider_container" data-autoplay="0" data-loop="1" data-speed="600" data-center="0"
                 data-variable-width="0" data-slides-per-view="responsive" data-xxs-slides="1" data-xs-slides="2"
                 data-sm-slides="2" data-md-slides="3" data-lg-slides="4" data-add-slides="4">
                <div class="cs_slider_wrapper">
                    @php
                        $itemInfor = theme_option('opt-products_section_items');
                        $itemInfor = json_decode($itemInfor, true);
                        $newAppInfor = [];
                        if ($itemInfor) {
                            foreach ($itemInfor as $item) {
                                $newAppInfor[] = Arr::pluck($item, 'value', 'key');
                            }
                        }
                    @endphp

                    @foreach ($newAppInfor as $key => $app)
                        <div class="cs_slide">
                            <div class="cs_team cs_style_1">
                                <div class="cs_team_thumbnail cs_center" style="height: 228px">
                                    <img src="{{ RvMedia::getImageUrl($app['thumbnail']) }}" alt="Team Thumbnail">
                                </div>
                                <div class="cs_team_bio">
                                    <h3 class="cs_team_title cs_semibold">{{ $app['name'] }}</h3>
                                    <p class="cs_team_subtitle mb-0">{{ $app['title'] }}</p>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
            <div class="cs_height_120 cs_height_lg_80"></div>
        </div>
    </div>
</section>
