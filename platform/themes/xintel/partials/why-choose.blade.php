<style>

    .grid-wrapper {
        display: grid;
        grid-template-columns: repeat(1, 1fr);
        gap: 20px;
        margin: auto;
    }

    @media (min-width: 768px) {
        .grid-wrapper {
            grid-template-columns: repeat(2, 1fr);
        }
    }

    @media (min-width: 992px) {
        .grid-wrapper {
            grid-template-columns: repeat(4, 1fr);
        }
    }

    .column {
        display: flex;
        flex-direction: column;
        gap: 20px;
    }

    .card-box {
        border: 1px solid rgb(33,35,46);
        border-radius: 15px;
        padding: 45px 20px;
        text-align: left;
        transition: background-color 0.3s ease, transform 0.3s ease;
        cursor: pointer;
        height: 250px;
    }

    .column:nth-child(2) {
        padding-top: 50px;
    }
    .column:nth-child(4) {
        padding-top: 30px;
    }

    .card-box:hover {
        background-color: #1d2f4e;
        transform: translateY(-5px);
        box-shadow: 0 0 10px rgba(0, 123, 255, 0.4);
    }

    .card-box i {
        font-size: 3rem;
        color: #3399ff;
        margin-bottom: 35px;
        display: block;
    }

    .card-box p {
        margin: 0;
        font-size: 28px;
        font-weight: 700;
        font-family: Manrope;
        line-height: 36px;
        letter-spacing: 0px;
    }
</style>
<section class="cs_experience_wrap cs_blog_experiences_1 position-relative hero-bg d-flex align-items-center justify-content-center p-3 p-md-4" id="{{ theme_option('opt-why-choose_section_id') }}">
    <div class="cs_shape cs_shape_position_1"></div>
    <div class="container">
        <div class="cs_height_120 cs_height_lg_80"></div>
        <div class="background-slideshow">
            <div class="bg-image active" style="background-image: url('{{ Theme::asset()->url('images/sky-and-start.jpg') }}');"></div>
        </div>
        <div class="hero-overlay"></div>
        <div class="container text-center position-relative" style="z-index: 1;">
            <div class="cs_section_heading cs_style_1 text-center wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.2s" style="visibility: visible; animation-duration: 1s; animation-delay: 0.2s; animation-name: fadeInUp;">
                <h2 class="cs_section_title mb-0">{{ theme_option('opt-why-choose_section_handing') }}</h2>
            </div>
            <div class="cs_height_50 cs_height_lg_50"></div>
            <div class="grid-wrapper">
                @for ($line = 1; $line <= 4; $line++)
                <div class="column">
                    @for ($item = 1; $item <= 2; $item++)
                        @if(theme_option('opt-why-choose_col_' . $line . '_item_' . $item . '_icon') || theme_option('opt-why-choose_col_' . $line . '_item_' . $item . '_title'))
                            <div class="card-box">
                                @if(theme_option('opt-why-choose_col_' . $line . '_item_' . $item . '_icon'))
                                    {{theme_option('opt-why-choose_col_' . $line . '_item_' . $item . '_icon')}}
                                @else
                                    <i class="{{theme_option('opt-why-choose_col_' . $line . '_item_' . $item . '_fontawesome')}}"></i>
                                @endif

                                <p>{{ theme_option('opt-why-choose_col_' . $line . '_item_' . $item . '_title') }}</p>
                            </div>
                        @endif
                    @endfor
                </div>
                @endfor

            </div>
        </div>
        <div class="cs_height_120 cs_height_lg_80"></div>
    </div>
</section>
