<!-- Strategic Partner Section -->
<section class="strategic-partner-section" id="partners">
    <div class="auto-container">
        <div class="row clearfix">
            <!-- Left Content Column -->
            <div class="col-lg-4 col-md-12 content-column">
                <div class="strategic-content">
                    <h2 class="strategic-title">{{ theme_option('partner_heading', 'STRATEGIC PARTNER') }}</h2>
                    <p class="strategic-text">
                        {{ theme_option(
                            'partner_sub_heading',
                            'We are building the XIN ecosystem alongside leading partners across various
                                                                        sectors – from technology and finance to tourism and media. Trust and long-term collaboration
                                                                        are the foundation of every step forward.',
                        ) }}
                    </p>

                    <!-- Navigation Buttons -->
                    <div class="partner-navigation">
                        <a href="#" class="partner-prev">
                            <img src="{{ Theme::asset()->url('images/icons/arrow-left.png') }}" alt="Previous">
                        </a>
                        <a href="#" class="partner-next">
                            <img src="{{ Theme::asset()->url('images/icons/arrow-right.png') }}" alt="Next">
                        </a>
                    </div>
                </div>
            </div>

            <!-- Right Slider Column -->
            <div class="col-lg-8 col-md-12 slider-column">
                <div class="partners-slider swiper-container">
                    <div class="swiper-wrapper">
                        @php
                            $partners = theme_option('partners');
                            $partners = json_decode($partners);
                            $partnersCount = is_array($partners) ? count($partners) : 0;
                            $partnersPerSlide = 8; // 4x2 grid implies 8 partners per slide.
                            // With 160x160px items and 24px gap, this might need adjustment
                            // depending on available width, or how many rows you want.
                            // For a single row of 4 items, partnersPerSlide should be 4.
                            // Let's assume 2 rows of 4, so 8 is fine.
$slidesCount = ceil($partnersCount / $partnersPerSlide);

// Fallback partners if none are defined in theme options
$fallbackPartners = [
    ['name' => 'Starbucks', 'logo' => Theme::asset()->url('images/icons/Partner-1.png')],
    [
        'name' => 'Highlands Coffee',
        'logo' => Theme::asset()->url('images/icons/Partner-2.png'),
    ],
    ['name' => 'KFC', 'logo' => Theme::asset()->url('images/icons/Partner-3.png')],
    ['name' => 'Lotteria', 'logo' => Theme::asset()->url('images/icons/Partner-4.png')],
    ['name' => 'Monster', 'logo' => Theme::asset()->url('images/icons/Partner-5.png')],
    ['name' => 'Riot Games', 'logo' => Theme::asset()->url('images/icons/Partner-6.png')],
    [
        'name' => 'Take-Two Interactive',
        'logo' => Theme::asset()->url('images/icons/Partner-7.png'),
    ],
    [
        'name' => 'Marvel Studios',
        'logo' => Theme::asset()->url('images/icons/Partner-8.png'),
                                ],
                            ];
                        @endphp

                        @if ($partnersCount > 0)
                            @for ($slide = 0; $slide < $slidesCount; $slide++)
                                <div class="swiper-slide">
                                    <div class="partners-grid">
                                        @for ($i = $slide * $partnersPerSlide; $i < min(($slide + 1) * $partnersPerSlide, $partnersCount); $i++)
                                            <div class="partner-item">
                                                <div class="partner-logo-box">
                                                    @if (isset($partners[$i][1]->value) && $partners[$i][1]->value)
                                                        <img src="{{ RvMedia::getImageUrl($partners[$i][1]->value) }}"
                                                            alt="{{ $partners[$i][0]->name ?? 'Partner' }}">
                                                    @endif
                                                </div>
                                            </div>
                                        @endfor
                                    </div>
                                </div>
                            @endfor
                        @else
                            <!-- Fallback slide if no partners defined -->
                            <div class="swiper-slide">
                                <div class="partners-grid">
                                    @foreach ($fallbackPartners as $partner)
                                        <div class="partner-item">
                                            <div class="partner-logo-box">
                                                <img src="{{ Theme::asset()->url($partner['logo']) }}"
                                                    alt="{{ $partner['name'] }}">
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Strategic Partner Section -->
