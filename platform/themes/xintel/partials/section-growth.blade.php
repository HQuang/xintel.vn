<!-- Page Title -->
<div class="page-wrapper image-layer" id="growth-mechanism" style="background-image: url({{ theme_option('growth_background_image') ? RvMedia::getImageUrl(theme_option('growth_background_image')) : Theme::asset()->url('images/background/4.jpg') }})">
    <section class="page-title">
        <div class="auto-container">
            <h1 class="page-title_heading">{{ theme_option('growth_title', 'Growth Mechanism') }}</h1>
            <div class="page-title_text">{!! theme_option('growth_description', "XIN is a platform that combines three core pillars: Travel & Earn, Social FI, and a Payment Gateway — making travel easier, fostering community connections, and enabling secure blockchain-based payments.") !!}</div>
        </div>
    </section>

    <section class="team-one">
        <div class="auto-container">
            <div class="row clearfix d-flex">

                <!-- Team Block One - Mission -->
                <div class="team-block_one col-lg-4 col-md-6 col-sm-12 d-flex">
                    <div class="team-block_one-inner d-flex flex-column h-100">
                        <div class="team-block_one-socials">
                            <img src="{{ theme_option('growth_mission_image') ? RvMedia::getImageUrl(theme_option('growth_mission_image')) : Theme::asset()->url('images/resource/mission.webp') }}" alt="{{ theme_option('growth_mission_title', 'Mission') }}">
                        </div>
                        <h5 class="team-block_one-heading text-white">{{ theme_option('growth_mission_title', 'Mission') }}</h5>
                        <div class="team-block_one-designation flex-grow-1">{!! theme_option('growth_mission_description', "To help users earn while traveling, connect global communities, and simplify international payments on a secure platform.") !!}</div>
                    </div>
                </div>

                <!-- Team Block One - Goal -->
                <div class="team-block_one col-lg-4 col-md-6 col-sm-12 d-flex">
                    <div class="team-block_one-inner d-flex flex-column h-100">
                        <div class="team-block_one-socials">
                            <img src="{{ theme_option('growth_goal_image') ? RvMedia::getImageUrl(theme_option('growth_goal_image')) : Theme::asset()->url('images/resource/goal.png') }}" alt="{{ theme_option('growth_goal_title', 'Goal') }}">
                        </div>
                        <h5 class="team-block_one-heading text-white">{{ theme_option('growth_goal_title', 'Goal') }}</h5>
                        <div class="team-block_one-designation flex-grow-1">{!! theme_option('growth_goal_description', "By 2028, XIN aims to connect millions of travelers, promote cultural exchange, and become a globally influential travel platform.") !!}</div>
                    </div>
                </div>

                <!-- Team Block One - Vision -->
                <div class="team-block_one col-lg-4 col-md-6 col-sm-12 d-flex">
                    <div class="team-block_one-inner d-flex flex-column h-100">
                        <div class="team-block_one-socials">
                            <img src="{{ theme_option('growth_vision_image') ? RvMedia::getImageUrl(theme_option('growth_vision_image')) : Theme::asset()->url('images/resource/vision.png') }}" alt="{{ theme_option('growth_vision_title', 'Vision') }}">
                        </div>
                        <h5 class="team-block_one-heading text-white">{{ theme_option('growth_vision_title', 'Vision') }}</h5>
                        <div class="team-block_one-designation flex-grow-1">{!! theme_option('growth_vision_description', "To become the leading platform where travel is not just an experience, but a chance to create value — with flexible services tailored to every user’s needs.") !!}</div>
                    </div>
                </div>

            </div>
        </div>
    </section>
</div>
<!-- End Page Title -->
