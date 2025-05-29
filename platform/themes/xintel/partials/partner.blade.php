<!-- Testimonial One -->
<section class="testimonial-one" id="team">
    <div class="auto-container">
        <!-- Sec Title -->
        <div class="sec-title">
            <h2 class="sec-title_heading">{{ theme_option('partner_heading8', 'Working Alongside Trusted Partners') }}</h2>
            <p class="text-white">{{ theme_option('partner_sub_heading8', "XIN is not just an idea – it is a project supported by leading names in Web3, marketing, and technology:") }}
            </p>
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
                                    <img src="{{ theme_option('partner_1_image') ? RvMedia::getImageUrl(theme_option('partner_1_image')) : Theme::asset()->url('images/resource/author-1.png') }}"
                                        alt="" style="height: 100%; object-fit: contain;">
                                </div>
                                <h5 class="testimonial-block_one-name">{{ theme_option('partner_1_name', '[Partner Web3 Name]') }}
                                </h5>
                                <div class="testimonial-block_one-designation">
                                    {{ theme_option('partner_1_position', 'Blockchain integration & smart contract security') }}</div>
                                {{-- <h5 class="testimonial-block_one-number">{{ theme_option('partner_1_number', '01') }}</h5> --}}
                            </div>
                            {{-- <div class="testimonial-block_one-lower">
                                <span class="quote_icon">
                                    <img src="{{ Theme::asset()->url('images/icons/quote.png') }}" alt="">
                                </span>
                                {{ theme_option('partner_1_bio', 'Innovation is at the heart of what I do. With XINTEL, I am committed to building a comprehensive social ecosystem that shapes the future of decentralized finance.') }}
                            </div> --}}
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
                                    <img src="{{ theme_option('partner_2_image') ? RvMedia::getImageUrl(theme_option('partner_2_image')) : Theme::asset()->url('images/resource/author-2.png') }}"
                                        alt="" style=" height: 100%; object-fit: contain;">
                                </div>
                                <h5 class="testimonial-block_one-name">{{ theme_option('partner_2_name', '[Marketing Agency Name]') }}
                                </h5>
                                <div class="testimonial-block_one-designation">
                                    {{ theme_option('partner_2_position', 'Go to market strategy for Southeast Asia and the global market.') }}</div>
                                {{-- <h5 class="testimonial-block_one-number">{{ theme_option('partner_2_number', '02') }}</h5> --}}
                            </div>
                            {{-- <div class="testimonial-block_one-lower">
                                <span class="quote_icon">
                                    <img src="{{ Theme::asset()->url('images/icons/quote.png') }}" alt="">
                                </span>
                                {{ theme_option('partner_2_bio', 'I believe that technology must always evolve. With XIN, we provide sustainable and innovative blockchain solutions.') }}
                            </div> --}}
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
                                    <img src="{{ theme_option('partner_3_image') ? RvMedia::getImageUrl(theme_option('partner_3_image')) : Theme::asset()->url('images/resource/author-3.png') }}"
                                        alt="" style="height: 100%; object-fit: contain;">
                                </div>
                                <h5 class="testimonial-block_one-name">{{ theme_option('partner_3_name', '[Tech Partner Name]') }}
                                </h5>
                                <div class="testimonial-block_one-designation">
                                    {{ theme_option('partner_3_position', 'Technical infrastructure & cross platform expansion.') }}</div>
                                {{-- <h5 class="testimonial-block_one-number">{{ theme_option('partner_3_number', '03') }}</h5> --}}
                            </div>
                            {{-- <div class="testimonial-block_one-lower">
                                <span class="quote_icon">
                                    <img src="{{ Theme::asset()->url('images/icons/quote.png') }}" alt="">
                                </span>
                                {{ theme_option('partner_3_bio', 'I don t just tell stories, I build worlds. XIN is where the community comes together to shape the future of Web3.') }}
                            </div> --}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="text-center">
            <p class="testimonial-block_one-designation">{!! theme_option('partner_quote', '“XIN represents a unique approach, connecting content, travel, and a transparent tokenomics model. This is a model we believe will explode in Web3.” — <b>[VC/Investor Name]</b>, General Partner – <b>[Fund Name]</b>.') !!}</p>
        </div>
    </div>
</section>
<!-- End Testimonial One -->
