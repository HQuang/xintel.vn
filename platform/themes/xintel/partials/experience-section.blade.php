<style>
    .cs_experience_wrap{
        min-height: 50vh;
        overflow-x: hidden; /* Prevent horizontal scroll from animations */
    }
    div.body * {
        font-family: Manrope !important;
    }
    .hero-bg {
        background: linear-gradient(135deg, #10102c 0%, #0A0A1A 100%); /* Dark blue/purple gradient */
        color: white; /* Default text color */
    }

    .btn-custom-gradient {
        background: linear-gradient(90deg, #CA650D, #FF3784);
        transform: scale(1.05);
        border: none;
    }
    .btn-custom-gradient:hover {
        background: linear-gradient(90deg, #FF8C42, #FF5C5C); /* Orange to Pinkish-Red gradient */
        transition: transform 0.3s ease, background 0.3s ease;
    }

    /* Decorative circles */
    .deco-circle-container {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        overflow: hidden; /* Keep circles contained if they go too far */
        pointer-events: none; /* Allow clicks to pass through */
    }
    .deco-circle {
        position: absolute;
        border-radius: 50%;
        opacity: 0.7;
        animation: float 6s ease-in-out infinite;
        background-size: cover;
        background-repeat: no-repeat;
        background-position: center;
    }

    .deco-circle-1 {
        width: 24px;
        height: 26px;
        top: 15%;
        left: 20%;
    }
    .deco-circle-2 {
        width: 40px;
        height: 42px;
        top: 25%;
        right: 18%;
    }
    .deco-circle-3 {
        width: 48px;
        height: 50px;
        bottom: 20%;
        left: 22%;
    }
    .deco-circle-4 {
        width: 24px;
        height: 25px;
        bottom: 30%;
        right: 25%;
    }

    @keyframes float {
        0% {
            transform: translateY(0px);
        }
        50% {
            transform: translateY(-15px);
        }
        100% {
            transform: translateY(0px);
        }
    }

    /* Adjust heading sizes for different breakpoints if needed */
    .display-custom-1 { font-size: calc(1.5rem + 3vw); } /* EXPERIENCE */
    .display-custom-2 { font-size: calc(1.8rem + 4vw); } /* XINSTAR TODAY */

    @media (min-width: 992px) { /* lg breakpoint */
        .display-custom-1 { font-size: 4.5rem; } /* Corresponds to ~text-7xl */
        .display-custom-2 { font-size: 6rem; } /* Corresponds to ~text-8xl */
    }


    /* Mobile adjustments for circles */
    @media (max-width: 767px) { /* md breakpoint (Bootstrap) */
        .deco-circle-1 { top: 10%; left: 10%; width: 15px; height: 15px;}
        .deco-circle-2 { top: 18%; right: 10%; width: 20px; height: 20px;}
        .deco-circle-3 { bottom: 15%; left: 12%; width: 18px; height: 18px;}
        .deco-circle-4 { bottom: 22%; right: 15%; width: 12px; height: 12px;}

        .display-custom-1 { font-size: calc(1.4rem + 2.5vw); }
        .display-custom-2 { font-size: calc(1.6rem + 3.5vw); }
    }

    /* Background Image Slideshow Container */
    .background-slideshow {
        position: absolute; /* Cover the entire viewport */
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
    }

    .background-slideshow .bg-image {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        opacity: 0;
        transition: opacity 1.5s ease-in-out; /* Fade transition */
    }

    .background-slideshow .bg-image.active {
        opacity: 1;
    }

    /* Dark overlay to ensure text readability over various images */
    .hero-overlay {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: #000515eb; /* Dark semi-transparent overlay, adjust opacity as needed */
    }

    .text-gradient-custom {
        background: linear-gradient(to right, #EC4899, #FF5C5C, #FF8C42, #FACC15);
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
        background-clip: text;
        text-fill-color: transparent;
    }
</style>

<section class="cs_experience_wrap cs_blog_experiences_1 position-relative hero-bg d-flex align-items-center justify-content-center p-3 p-md-4" id="{{ theme_option('opt-experience_section_id') }}">
    <div class="cs_height_120 cs_height_lg_80"></div>
    <div class="container">
        <div class="background-slideshow">
            <div class="bg-image active" style="background-image: url('{{ Theme::asset()->url('images/experiences/experience_bg.png') }}');"></div>
        </div>
        <div class="hero-overlay"></div>
        <div class="deco-circle-container">
            <div class="deco-circle deco-circle-1" style="background-image: url('{{ Theme::asset()->url('images/experiences/experience_1.png') }}');"></div>
            <div class="deco-circle deco-circle-2" style="background-image: url('{{ Theme::asset()->url('images/experiences/experience_2.png') }}');"></div>
            <div class="deco-circle deco-circle-3" style="background-image: url('{{ Theme::asset()->url('images/experiences/experience_3.png') }}');"></div>
            <div class="deco-circle deco-circle-4" style="background-image: url('{{ Theme::asset()->url('images/experiences/experience_4.png') }}');"></div>
        </div>

        <div class="container text-center position-relative" style="z-index: 1;"> <div class="row justify-content-center">
                <div class="col-md-10 col-lg-8">
                    <h1 class="fw-bolder mb-3 display-custom-1 animated fadeInDown">
                        {{ theme_option('opt-experience_section_handing') }}
                    </h1>
                    <h2 class="fw-bolder mb-4 display-custom-1 text-gradient-custom animated fadeInUp" style="animation-delay: 0.3s;">
                        {{ theme_option('opt-experience_section_sub_handing') }}
                    </h2>

                    <a href="{{ theme_option('opt-experience_section_button_url') }}" class="btn btn-custom-gradient text-white fw-bold py-3 px-4 py-sm-3 px-sm-5 rounded-pill fs-5 shadow-lg animated zoomIn" style="animation-delay: 0.6s;">
                        {{ theme_option('opt-experience_section_button_heading') }}
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="cs_height_120 cs_height_lg_80"></div>
</section>
