<!-- Ecosystem Section -->
<section class="ecosystem-one" id="ecosystem">
    <div class="auto-container">
        <div class="row align-items-center">
            <!-- Image Column -->
            <div class="ecosystem-one_image-column col-lg-6 col-md-12">
                <div class="ecosystem-one_image-inner">
                    <img src="{{ Theme::asset()->url('images/background/ecosystem.webp') }}" alt="XIN Ecosystem">
                </div>
            </div>
            <!-- Content Column -->
            <div class="ecosystem-one_content-column col-lg-6 col-md-12">
                <div class="ecosystem-one_content-inner">
                    <h2 class="ecosystem-one_heading">{{ theme_option('ecosystem_section_heading', __('XIN Ecosystem')) }}</h2>
                    <div class="ecosystem-one_content">
                        <p>{{ theme_option('ecosystem_section_description', __("XIN is a comprehensive ecosystem where every member not only connects but also grows sustainably within a secure, innovative digital network deeply rooted in local cultural identity.")) }}</p>

                        <h5><img src="{{ theme_option('ecosystem_sub_section_1_pin_icon') ? RvMedia::getImageUrl(theme_option('ecosystem_sub_section_1_pin_icon')) : Theme::asset()->url('images/icons/pin.png') }}"
                                alt="Pin">{{ theme_option('ecosystem_sub_section_1_heading', __('Strong Community Connection')) }}</h5>
                        <p>{!! theme_option('ecosystem_sub_section_1_content', "From <b>XIN-Tel</b> – a global connectivity platform, to <b>XIN-Travel</b> – a space for preserving and promoting local culture, we build community hubs. With <b>XIN-Star</b>, users tell the stories of their regions through video, preserving experiences with technology.") !!}</p>

                        <h5><img src="{{ theme_option('ecosystem_sub_section_2_pin_icon') ? RvMedia::getImageUrl(theme_option('ecosystem_sub_section_2_pin_icon')) : Theme::asset()->url('images/icons/pin.png') }}"
                                alt="Pin">{{ theme_option('ecosystem_sub_section_2_heading', __('Earning Profits')) }}</h5>
                        <p>{!! theme_option('ecosystem_sub_section_2_content', __("<b>XIN-Shop</b> supports local businesses in launching online stores and engaging in peer-to-peer commerce. <b>XIN-Game</b> offers an entertainment space where players can interact, co-create, and earn income from their content.")) !!}</p>

                        <h5><img src="{{ theme_option('ecosystem_sub_section_3_pin_icon') ? RvMedia::getImageUrl(theme_option('ecosystem_sub_section_3_pin_icon')) : Theme::asset()->url('images/icons/pin.png') }}"
                                alt="Pin">{{ theme_option('ecosystem_sub_section_3_heading', __('Safe Payments')) }}</h5>
                        <p>{!! theme_option('ecosystem_sub_section_3_content', __("<b>XIN-Fintech</b> ensures safe transactions, covering everything from payments to savings and credit. Powered by the <b>XIN token</b> system, users worldwide are connected through a transparent and trustworthy digital financial platform.")) !!}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Ecosystem Section -->
