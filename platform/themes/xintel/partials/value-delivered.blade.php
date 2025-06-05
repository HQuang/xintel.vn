<section class="cs_about cs_style_1 cs_shape_wrap cs_about_shapes_1 position-relative" id="{{ theme_option('opt-value-delivered_section_id') }}">
    <div class="cs_shape cs_shape_position_1"></div>
    <div class="cs_height_120 cs_height_lg_80"></div>
    <div class="container">
        <div class="cs_section_heading cs_style_1 text-center wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.2s">
            <h2 class="cs_section_title mb-0">{{ theme_option('opt-value-delivered_section_handing') }}</h2>
        </div>
        <div class="cs_height_50 cs_height_lg_50"></div>
        <div class="cs_iconbox_wrapper cs_style_1">
            @php
                $itemInfor = theme_option('opt-value-delivered_section_items');
                $itemInfor = json_decode($itemInfor, true);
                $newAppInfor = [];
                if ($itemInfor) {
                    foreach ($itemInfor as $item) {
                        $newAppInfor[] = Arr::pluck($item, 'value', 'key');
                    }
                }
            @endphp

            @foreach ($newAppInfor as $key => $app)
                @php
                    $key = $key+1;
                @endphp
            <div class="cs_iconbox cs_style_1 cs_radius_20 wow fadeIn" data-wow-duration="1s" data-wow-delay="0.{{ $key }}s">
                <div class="cs_iconbox_inner">
                    <div class="cs_iconbox_header">
                        <div class="cs_iconbox_icon cs_center">
                            <img src="{{ RvMedia::getImageUrl($app['logo']) }}" alt="Icon">
                        </div>
                        <div class="cs_iconbox_index">{{ str_pad($key, 2, '0', STR_PAD_LEFT) . ' '  }}</div>
                    </div>
                    <div class="cs_iconbox_text">
                        <p class="cs_iconbox_subtitle mb-0">{{ $app['description'] }}</p>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
    <div class="cs_height_120 cs_height_lg_80"></div>
</section>

