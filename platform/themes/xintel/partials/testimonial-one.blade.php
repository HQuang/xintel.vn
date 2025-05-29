<!-- Testimonial One -->
<section class="testimonial-one" id="team">
    <div class="auto-container">
        <!-- Sec Title -->
        <div class="sec-title">
            <h2 class="sec-title_heading">{{ theme_option('team_heading', 'Core Team') }}</h2>
            <div class="sec-title_icon"><img src="{{ Theme::asset()->url('images/icons/icon-3.png') }}" alt="">
            </div>
            {{-- <p class="text-white">{{ theme_option('team_sub_heading', 'XIN is not just an idea it is a project supported by leading names in Web3, marketing, and technology') }}
            </p> --}}
        </div>
        <div class="three-item_carousel swiper-container">
            <div class="swiper-wrapper">
                <!-- Slide -->
                <div class="swiper-slide">
                    <!-- Testimonial Block One -->
                    <div class="testimonial-block_one">
                        <div class="testimonial-block_one-inner">
                            <div class="testimonial-block_one-content">
                                <div class="testimonial-block_one-author"
                                    style="width: 100%; height: 200px; overflow: hidden;">
                                    <img src="{{ theme_option('team_1_image') ? RvMedia::getImageUrl(theme_option('team_1_image')) : Theme::asset()->url('images/resource/author-1.png') }}"
                                        alt="" style="height: 100%; object-fit: contain;">
                                </div>
                                <h5 class="testimonial-block_one-name">{{ theme_option('team_1_name', 'AlexTurner') }}
                                </h5>
                                <div class="testimonial-block_one-designation">
                                    {{ theme_option('team_1_position', 'CEO') }}</div>
                                <h5 class="testimonial-block_one-number">{{ theme_option('team_1_number', '01') }}</h5>
                            </div>
                            <div class="testimonial-block_one-lower">
                                <span class="quote_icon">
                                    <img src="{{ Theme::asset()->url('images/icons/quote.png') }}" alt="">
                                </span>
                                {{ theme_option('team_1_bio', 'Innovation is at the heart of what I do. With XINTEL, I am committed to building a comprehensive social ecosystem that shapes the future of decentralized finance.') }}
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Slide -->
                <div class="swiper-slide">
                    <!-- Testimonial Block One -->
                    <div class="testimonial-block_one">
                        <div class="testimonial-block_one-inner">
                            <div class="testimonial-block_one-content">
                                <div class="testimonial-block_one-author"
                                    style="width: 100%; height: 200px; overflow: hidden;">
                                    <img src="{{ theme_option('team_2_image') ? RvMedia::getImageUrl(theme_option('team_2_image')) : Theme::asset()->url('images/resource/author-2.png') }}"
                                        alt="" style=" height: 100%; object-fit: contain;">
                                </div>
                                <h5 class="testimonial-block_one-name">{{ theme_option('team_2_name', 'Kent Baktas') }}
                                </h5>
                                <div class="testimonial-block_one-designation">
                                    {{ theme_option('team_2_position', 'CTO') }}</div>
                                <h5 class="testimonial-block_one-number">{{ theme_option('team_2_number', '02') }}</h5>
                            </div>
                            <div class="testimonial-block_one-lower">
                                <span class="quote_icon">
                                    <img src="{{ Theme::asset()->url('images/icons/quote.png') }}" alt="">
                                </span>
                                {{ theme_option('team_2_bio', 'I believe that technology must always evolve. With XIN, we provide sustainable and innovative blockchain solutions.') }}
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Slide -->
                <div class="swiper-slide">
                    <!-- Testimonial Block One -->
                    <div class="testimonial-block_one">
                        <div class="testimonial-block_one-inner">
                            <div class="testimonial-block_one-content">
                                <div class="testimonial-block_one-author"
                                    style="width: 100%; height: 200px; overflow: hidden;">
                                    <img src="{{ theme_option('team_3_image') ? RvMedia::getImageUrl(theme_option('team_3_image')) : Theme::asset()->url('images/resource/author-3.png') }}"
                                        alt="" style="height: 100%; object-fit: contain;">
                                </div>
                                <h5 class="testimonial-block_one-name">{{ theme_option('team_3_name', 'Dusan Zica') }}
                                </h5>
                                <div class="testimonial-block_one-designation">
                                    {{ theme_option('team_3_position', 'CMO') }}</div>
                                <h5 class="testimonial-block_one-number">{{ theme_option('team_3_number', '03') }}</h5>
                            </div>
                            <div class="testimonial-block_one-lower">
                                <span class="quote_icon">
                                    <img src="{{ Theme::asset()->url('images/icons/quote.png') }}" alt="">
                                </span>
                                {{ theme_option('team_3_bio', "I don't just tell stories, I build worlds. XIN is where the community comes together to shape the future of Web3.") }}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Testimonial One -->
