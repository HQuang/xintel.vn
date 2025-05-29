<!-- Tokenomics & Utility Section -->
<section class="tokenomics-utility-two" id="tokenomics">
    <div class="auto-container">
        <div class="sec-title-two">
            <p class="tokenomics-utility-two_main-heading">
                {!! theme_option('tokenomics_main_heading', 'Tokenomics & Utility') !!}
            </p>
        </div>
        <div class="row align-items-center">
            <!-- Right Content Column (Utility List) -->
            <div class="tokenomics-utility-two_left-column col-lg-6 col-md-12">
                <div class="tokenomics-utility-two_left-content">
                    <h4>{{ theme_option('tokenomics_sub_heading', '100% Mining Distribution - No Private Sale:') }}
                    </h4>
                    <p>{!! theme_option(
                        'tokenomics_description',
                        'The XIN Token is distributed entirely through a transparent mining mechanism — <b>with no pre-sale and no allocations for funds or the team</b>. This forms the foundation for building a fair, open, and sustainable ecosystem.',
                    ) !!}
                    </p>
                    <div class="tokenomics-chart-container">
                        <div class="circular-chart">
                            <img src="{{ theme_option('tokenomics_image') ? RvMedia::getImageUrl(theme_option('tokenomics_image')) : Theme::asset()->url('images/icons/Tokenomics.png') }}"
                                alt="Tokenomics Chart">
                        </div>

                        <div class="mining-volume-card">
                            <div class="mining-volume-card_title"><b>{{ __('Mining Volume to Date') }}</b></div>
                            <div class="mining-volume-card_value">
                                {{ theme_option('tokenomics_mining_volume', '121,995,104 / 12,000,000,000') }}
                                <img src="{{ Theme::asset()->url('images/icons/XIN_Token.png') }}" alt="XIN"
                                    class="value-icon">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Left Content Column with Chart -->
            <div class="tokenomics-utility-two_right-column col-lg-6 col-md-12">


                <ul class="utility-grid">
                    <li>
                        <div class="utility-card">
                            <div class="utility-card_icon">
                                <img src="{{ theme_option('tokenomics_utility_1_icon') ? RvMedia::getImageUrl(theme_option('tokenomics_utility_1_icon')) : Theme::asset()->url('images/icons/Cube.png') }}"
                                    alt="Smart Contract">
                            </div>
                            <div class="utility-card_title">
                                {{ theme_option('tokenomics_utility_1_title', 'Smart Contract') }}</div>
                            <a href="{{ theme_option('tokenomics_utility_1_link', '#') }}"
                                class="utility-card_button">{{ __('Details') }}</a>
                        </div>
                    </li>
                    <li>
                        <div class="utility-card">
                            <div class="utility-card_icon">
                                <img src="{{ theme_option('tokenomics_utility_2_icon') ? RvMedia::getImageUrl(theme_option('tokenomics_utility_2_icon')) : Theme::asset()->url('images/icons/Cube.png') }}"
                                    alt="Token Audit">
                            </div>
                            <div class="utility-card_title">
                                {{ theme_option('tokenomics_utility_2_title', 'Token Audit') }}</div>
                            <a href="{{ theme_option('tokenomics_utility_2_link', '#') }}"
                                class="utility-card_button">{{ __('Details') }}</a>
                        </div>
                    </li>
                    <li>
                        <div class="utility-card">
                            <div class="utility-card_icon">
                                <img src="{{ theme_option('tokenomics_utility_3_icon') ? RvMedia::getImageUrl(theme_option('tokenomics_utility_3_icon')) : Theme::asset()->url('images/icons/Cube.png') }}"
                                    alt="P2P Exchange">
                            </div>
                            <div class="utility-card_title">
                                {{ theme_option('tokenomics_utility_3_title', 'P2P Exchange') }}</div>
                            <a href="{{ theme_option('tokenomics_utility_3_link', '#') }}"
                                class="utility-card_button">{{ __('Details') }}</a>
                        </div>
                    </li>
                    <li>
                        <div class="utility-card">
                            <div class="utility-card_icon">
                                <img src="{{ theme_option('tokenomics_utility_4_icon') ? RvMedia::getImageUrl(theme_option('tokenomics_utility_4_icon')) : Theme::asset()->url('images/icons/Cube.png') }}"
                                    alt="CEX">
                            </div>
                            <div class="utility-card_title">{{ theme_option('tokenomics_utility_4_title', 'CEX') }}
                            </div>
                            <span class="utility-card_status">{{ __('Coming soon') }}</span>
                        </div>
                    </li>
                    <li>
                        <div class="utility-card">
                            <div class="utility-card_icon">
                                <img src="{{ theme_option('tokenomics_utility_5_icon') ? RvMedia::getImageUrl(theme_option('tokenomics_utility_5_icon')) : Theme::asset()->url('images/icons/Cube.png') }}"
                                    alt="DEX">
                            </div>
                            <div class="utility-card_title">{{ theme_option('tokenomics_utility_5_title', 'DEX') }}
                            </div>
                            <span class="utility-card_status">{{ __('Coming soon') }}</span>
                        </div>
                    </li>
                </ul>

            </div>
        </div>
    </div>
</section>
<!-- End Tokenomics & Utility Section -->
