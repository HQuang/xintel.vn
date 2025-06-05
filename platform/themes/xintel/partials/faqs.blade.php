<section class="cs_shape_wrap cs_faq_shapes_1 position-relative" id="{{ theme_option('opt-faqs_section_id') }}">
    <div class="cs_shape cs_shape_position_1"></div>
    <div class="cs_height_120 cs_height_lg_80"></div>
    <div class="container">
        <div class="cs_section_heading cs_style_1 text-center wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.2s">
            <h2 class="cs_section_title mb-0">{{ theme_option('opt-faqs_section_handing') }}</h2>
        </div>
        <div class="cs_height_50 cs_height_lg_50"></div>
        <div class="container wow fadeIn" data-wow-duration="1s" data-wow-delay="0.35s">
            <div class="row cs_gap_y_24">
                @php
                    $itemInfor = theme_option('opt-faqs_section_items');
                    $itemInfor = json_decode($itemInfor, true);
                    $newAppInfor = [];
                    $newAppInfor1 = [];
                    $newAppInfor2 = [];
                    if ($itemInfor) {
                        foreach ($itemInfor as $key => $item) {
                            $newAppInfor[] = Arr::pluck($item, 'value', 'key');
                        }

                        // Split $newAppInfor into two parts: 1,2,3,4 and 5,6,7
                        for ($i = 0; $i < count($newAppInfor); $i++) {
                            $newAppInfor[$i]['id'] = $i+1;
                            if ($i < count($newAppInfor) / 2) {
                                $newAppInfor1[] = $newAppInfor[$i];
                            } else {
                                $newAppInfor2[] = $newAppInfor[$i];
                            }
                        }
                    }
                @endphp

                <div class="col-lg-6">
                    @foreach ($newAppInfor1 as $key => $app)
                        <div class="cs_accordian cs_style_1">
                            <h3 class="cs_accordian_head cs_semibold mb-0">
                                {{ $app['id'] . '. ' . $app['question'] ?? 'Question' }}
                                <span class="cs_accordian_toggle cs_center">
                                    <i class="fa-solid fa-chevron-down"></i>
                                </span>
                            </h3>
                            <div class="cs_accordian_body">
                                {{ $app['answer'] ?? 'Answer' }}
                            </div>
                        </div>
                    @endforeach
                </div>
                <div class="col-lg-6">
                    @foreach ($newAppInfor2 as $key => $app)
                        <div class="cs_accordian cs_style_1">
                            <h3 class="cs_accordian_head cs_semibold mb-0">
                                {{ $app['id'] . '. ' . $app['question'] ?? 'Question' }}
                                <span class="cs_accordian_toggle cs_center">
                                    <i class="fa-solid fa-chevron-down"></i>
                                </span>
                            </h3>
                            <div class="cs_accordian_body">
                                {{ $app['answer'] ?? 'Answer' }}
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</section>
