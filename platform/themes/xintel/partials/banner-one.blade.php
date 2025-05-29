<!-- Banner One -->
<section class="banner-one" id="home"
    style="background-image:url({{ theme_option('banner_image') ? RvMedia::getImageUrl(theme_option('banner_image')) : Theme::asset()->url('images/background/1.jpg') }})">
    <div class="robot">
        <script type="module" src="https://unpkg.com/@splinetool/viewer@1.3.5/build/spline-viewer.js"></script>
        <spline-viewer url="https://prod.spline.design/AqtlWJlNbO-ZMkvz/scene.splinecode"></spline-viewer>
    </div>
    <div class="auto-container">
        <!-- Content Column -->
        <div class="banner-one_content">
            <div class="banner-one_content-inner">
                <h1 class="banner-one_heading">{!! theme_option('banner_heading', 'What the XIN App Brings to You') !!}</h1>
                <div class="lower-box d-flex justify-content-between align-items-center flex-wrap">
                    <div class="banner-one_text col-lg-6 col-md-12 mb-4 mb-lg-0">
                        {{ theme_option(
                            'banner_text',
                            "XIN is not just a simple travel platform; it is a space for users to express their passion for
                                                sharing stories of exploration and self-expression. Sharing photos, videos, and travel
                                                experiences has become an essential part of online life, and many social platforms are
                                                leveraging this trend to offer travel related services and experiences.",
                        ) }}
                    </div>
                    <div class="banner-one_text-two col-lg-6 col-md-12">
                        {{ theme_option(
                            'banner_text_two',
                            "XIN offers a powerful feature that enhances your overall travel experience and gives you
                        a great opportunity to earn exciting rewards every second as you explore the world.",
                        ) }}
                    </div>
                </div>
            </div>
        </div>
        <div class="down-box scroll-to-target" data-target=".gallery-one">
            <img src="{{ Theme::asset()->url('images/main-slider/down.png') }}" alt="">
        </div>
    </div>
</section>
<!-- End Banner One -->
