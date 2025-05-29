<!-- Gallery One -->
<section class="gallery-one" id="introduce">
    <div class="auto-container">
        <section class="page-title">
            <div class="auto-container">
                <h1 class="page-title_heading">{{ theme_option('gallery_heading', 'WHAT IS XIN?') }}</h1>
                <div class="page-title_text">{!! theme_option(
                    'gallery_sub_heading',
                    "XIN is more than just a travel platform – it’s a space to share emotions, images, videos, and vibrant exploration experiences. Here, you don’t just inspire the community – you earn rewards every second as you connect and interact with the world.",
                ) !!}</div>
            </div>
        </section>
        <div class="row clearfix">
            <!-- Gallery Block One -->
            <div class="gallery-block_one col-lg-4 col-md-6 col-sm-12">
                <div class="gallery-block_one-inner wow fadeInLeft" data-wow-delay="0ms" data-wow-duration="1500ms">
                    <div class="gallery-block_one-content h-100">
                        <div class="gallery-block_one-image">
                            <img
                                    src="{{ theme_option('gallery_1_image') ? RvMedia::getImageUrl(theme_option('gallery_1_image')) : Theme::asset()->url('images/gallery/transaction_fee.png') }}"
                                    alt="">
                        </div>
                        <h6 class="gallery-block_one-heading text-white">{!! theme_option('gallery_1_title', 'Transaction Fees') !!}</h6>
                        <div class="gallery-block_one-title">
                            {!! theme_option(
                                'gallery_1_content',
                                "From the exchange of services, products, and financial interactions between users, merchants, and businesses within the ecosystem.",
                            ) !!}
                        </div>
                    </div>
                </div>
            </div>
            <!-- Gallery Block One -->
            <div class="gallery-block_one col-lg-4 col-md-6 col-sm-12">
                <div class="gallery-block_one-inner wow fadeInUp" data-wow-delay="0ms" data-wow-duration="1500ms">
                    <div class="gallery-block_one-content h-100">
                        <div class="gallery-block_one-image">
                            <img
                                    src="{{ theme_option('gallery_2_image') ? RvMedia::getImageUrl(theme_option('gallery_2_image')) : Theme::asset()->url('images/gallery/in_app_purchase.png') }}"
                                    alt="">
                        </div>
                        <h6 class="gallery-block_one-heading text-white">{!! theme_option('gallery_2_title', 'In app Purchases') !!}</h6>
                        <div class="gallery-block_one-title">
                            {!! theme_option('gallery_2_content', "Users pay to access premium utilities such as games, featured content display, shopping, and digital events.") !!}
                        </div>
                    </div>
                </div>
            </div>
            <!-- Gallery Block One -->
            <div class="gallery-block_one col-lg-4 col-md-6 col-sm-12">
                <div class="gallery-block_one-inner wow fadeInRight" data-wow-delay="0ms" data-wow-duration="1500ms">
                    <div class="gallery-block_one-content h-100">
                        <div class="gallery-block_one-image">
                            <img
                                    src="{{ theme_option('gallery_3_image') ? RvMedia::getImageUrl(theme_option('gallery_3_image')) : Theme::asset()->url('images/gallery/membership.png') }}"
                                    alt="">
                        </div>
                        <h6 class="gallery-block_one-heading text-white">{!! theme_option('gallery_3_title', 'Subscription & Membership') !!}</h6>
                        <div class="gallery-block_one-title">
                            {!! theme_option('gallery_3_content', "Enhanced membership packages offer extended access, travel and financial benefits, and exclusive community privileges.") !!}
                        </div>
                    </div>
                </div>
            </div>
            <!-- Gallery Block One -->
            <div class="gallery-block_one col-lg-4 col-md-6 col-sm-12">
                <div class="gallery-block_one-inner wow fadeInLeft" data-wow-delay="0ms" data-wow-duration="1500ms">
                    <div class="gallery-block_one-content h-100">
                        <div class="gallery-block_one-image">
                            <img
                                    src="{{ theme_option('gallery_4_image') ? RvMedia::getImageUrl(theme_option('gallery_4_image')) : Theme::asset()->url('images/gallery/marketing_ott.png') }}"
                                    alt="">
                        </div>
                        <h6 class="gallery-block_one-heading text-white">{!! theme_option('gallery_4_title', 'Commercial Partnerships & OTT Marketplace') !!}</h6>
                        <div class="gallery-block_one-title">
                            {!! theme_option('gallery_4_content', "Businesses pay to set up storefronts, promote offerings, or integrate XIN payment within their platforms.") !!}
                        </div>
                    </div>
                </div>
            </div>
            <!-- Gallery Block One -->
            <div class="gallery-block_one col-lg-4 col-md-6 col-sm-12">
                <div class="gallery-block_one-inner wow fadeInUp" data-wow-delay="0ms" data-wow-duration="1500ms">
                    <div class="gallery-block_one-content h-100">
                        <div class="gallery-block_one-image">
                            <img
                                    src="{{ theme_option('gallery_5_image') ? RvMedia::getImageUrl(theme_option('gallery_5_image')) : Theme::asset()->url('images/gallery/payment.png') }}"
                                    alt="">
                        </div>
                        <h6 class="gallery-block_one-heading text-white">{!! theme_option('gallery_5_title', 'Payments via XIN Token') !!}</h6>
                        <div class="gallery-block_one-title">
                            {!! theme_option('gallery_5_content', "Used for all services — tours, game items, OTT, and storefronts — seamlessly and securely.") !!}
                        </div>
                    </div>
                </div>
            </div>
            <!-- Gallery Block One -->
            <div class="gallery-block_one col-lg-4 col-md-6 col-sm-12">
                <div class="gallery-block_one-inner wow fadeInRight" data-wow-delay="0ms" data-wow-duration="1500ms">
                    <div class="gallery-block_one-content h-100">
                        <div class="gallery-block_one-image">
                            <img
                                    src="{{ theme_option('gallery_6_image') ? RvMedia::getImageUrl(theme_option('gallery_6_image')) : Theme::asset()->url('images/gallery/Xin_token.png') }}"
                                    alt="">
                        </div>
                        <h6 class="gallery-block_one-heading text-white">{!! theme_option('gallery_6_title', 'Staking XIN Token') !!}</h6>
                        <div class="gallery-block_one-title">
                            {!! theme_option('gallery_6_content', "Earn periodic rewards, unlock premium content, and participate in community governance.") !!}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Gallery One -->
