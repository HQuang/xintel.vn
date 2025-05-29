<!-- Services One -->
<section class="services-one" id="about">
    <div class="auto-container">
        <!-- Sec Title -->
        <div class="sec-title">
            <h2 class="sec-title_heading">{{ theme_option('services_heading', 'Why Choose XIN?') }}</h2>
            {{-- <div class="sec-title_icon">
                <img src="{{ Theme::asset()->url('images/icons/icon-1.png') }}" alt="">
            </div> --}}
            <p class="sec-title_text text-white">{!! theme_option(
                'services_sub_heading',
                'XIN needs to exist because it addresses key challenges in the travel industry and bridges the gap between tourism businesses and blockchain technology. Here are a few reasons why XIN is essential:',
            ) !!}</p>
        </div>
        <div class="row clearfix">
            <!-- Service Block One -->
            <div class="service-block_one col-lg-6 col-md-6 col-sm-12">
                <div class="service-block_one-inner position-relative h-100">
                    <div class="service-content-wrapper">
                        <p class="service-block_one-heading">{!! theme_option(
                            'service_1_content',
                            '<b>Cost Optimization & Global Payments</b> <br> XIN leverages blockchain to reduce transaction fees and enable fast, transparent international payments.',
                        ) !!}
                        </p>
                        <div class="service-block_one-icon">
                            <img src="{{ theme_option('service_1_icon') ? RvMedia::getImageUrl(theme_option('service_1_icon')) : Theme::asset()->url('images/icons/service-1.png') }}"
                                alt="">
                        </div>
                    </div>
                </div>
            </div>
            <!-- Service Block One -->
            <div class="service-block_one col-lg-6 col-md-6 col-sm-12">
                <div class="service-block_one-inner position-relative h-100">
                    <div class="service-content-wrapper">
                        <p class="service-block_one-heading">{!! theme_option(
                            'service_2_content',
                            '<b>Community Connection &
                                                                Sharing</b><br> It creates opportunities for meaningful
                                                                connections between travelers and locals,
                                                                while sharing tourism generated value
                                                                with the community.',
                        ) !!}</p>
                        <div class="service-block_one-icon">
                            <img src="{{ theme_option('service_2_icon') ? RvMedia::getImageUrl(theme_option('service_2_icon')) : Theme::asset()->url('images/icons/service-2.png') }}"
                                alt="">
                        </div>
                    </div>
                </div>
            </div>
            <!-- Service Block One -->
            <div class="service-block_one col-lg-6 col-md-6 col-sm-12">
                <div class="service-block_one-inner position-relative h-100">
                    <div class="service-content-wrapper">
                        <p class="service-block_one-heading">{!! theme_option(
                            'service_3_content',
                            '<b>Transparency & Trust</b> <br>Blockchain technology reveals the true
                                            value of services, fostering trust between
                                            users and providers.',
                        ) !!}
                        </p>
                        <div class="service-block_one-icon">
                            <img src="{{ theme_option('service_3_icon') ? RvMedia::getImageUrl(theme_option('service_3_icon')) : Theme::asset()->url('images/icons/service-3.png') }}"
                                alt="">
                        </div>
                    </div>
                </div>
            </div>
            <!-- Service Block One -->
            <div class="service-block_one col-lg-6 col-md-6 col-sm-12">
                <div class="service-block_one-inner position-relative h-100">
                    <div class="service-content-wrapper">
                        <p class="service-block_one-heading">{!! theme_option(
                            'service_4_content',
                            '<b>Innovative & Engaging Technology</b> <br>NFTs and a reward system make travel
                        more exciting, personalized, and
                        memorable.',
                        ) !!}
                        </p>
                        <div class="service-block_one-icon">
                            <img src="{{ theme_option('service_4_icon') ? RvMedia::getImageUrl(theme_option('service_4_icon')) : Theme::asset()->url('images/icons/service-4.png') }}"
                                alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Services One -->