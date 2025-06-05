<style>

    .phases-container {
        display: flex;
        flex-wrap: wrap; /* Cho phép các panel xuống dòng trên màn hình nhỏ */
        gap: 25px; /* Khoảng cách giữa các panel */
        justify-content: center;
        max-width: 1800px; /* Giới hạn chiều rộng tối đa của container */
        width: 100%;
    }

    .phase-panel {
        background-color: var(--panel-bg-color);
        border-radius: 25px; /* Bo tròn góc */
        padding: 1px;
        flex: 1 1 300px; /* flex-grow, flex-shrink, flex-basis */
        max-width: 234px; /* Chiều rộng tối đa của panel */
        box-shadow: 0 0 10px rgba(0,0,0,0.3), 0 0 0px var(--glow-color); /* Initial subtle glow */
        transition: transform 0.3s ease, box-shadow 0.3s ease; /* Hiệu ứng chuyển động */
        text-align: left; /* Căn lề trái cho nội dung trong panel */
        display: flex;
        flex-direction: column;
        background: linear-gradient(to right, #ffffff00, #3acfd54d, #3acfd5);
    }

    .phase-panel .inner-box {
        background: #02001c;
        padding: 24px 20px;
        border-radius: 25px;
        height: 100%;
    }

    .phase-panel:hover {
        transform: translateY(-10px) scale(1.03); /* Hiệu ứng nhô lên và phóng to nhẹ */
        box-shadow: 0 0 25px var(--glow-color), 0 0 15px var(--glow-color); /* Tăng hiệu ứng glow */
    }

    .phase-header {
        text-align: left;
        margin-bottom: 15px;
    }

    .phase-number {
        display: block;
        font-size: 1.3em;
        font-weight: 700;
        color: var(--accent-color);
        margin-bottom: 25px;
        background: -webkit-linear-gradient(#0D36CA, #1C61DD);
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
    }

    .phase-title {
        font-size: 1.8em;
        font-weight: 700;
        color: var(--text-color);
        margin: 0 0 8px 0;
        min-height: 70px;
    }

    .phase-subtitle {
        font-size: 0.8em;
        font-weight: 400;
        color: var(--subtitle-color);
        text-transform: uppercase;
        letter-spacing: 0.5px;
        margin: 0;
        height: 50px; /* Đảm bảo không gian cho subtitle ngay cả khi trống */
    }

    .phase-divider {
        border-top: 2px solid #fff;
        margin: 10px 0 20px 0; /* Canh lề trái cho divider */
    }

    .phase-description {
        font-size: 0.95em;
        line-height: 1.6;
        color: var(--text-color);
        margin: 0;
        flex-grow: 1; /* Đảm bảo description chiếm không gian còn lại */
    }

    /* Responsive adjustments */
    @media (max-width: 1200px) {
        .phase-panel {
            flex-basis: calc(50% - 25px); /* 2 panel mỗi hàng */
            max-width: calc(50% - 25px);
        }
    }

    @media (max-width: 768px) {
        .phases-container {
            gap: 20px;
        }
        .phase-panel {
            flex-basis: calc(100% - 20px); /* 1 panel mỗi hàng */
            max-width: calc(100% - 20px);
            min-width: unset;
        }
        .phase-title {
            font-size: 1.6em;
        }
        .phase-number {
            font-size: 1.2em;
        }
        .phase-description {
            font-size: 0.9em;
        }
    }

    @media (max-width: 480px) {
        .phase-title {
            font-size: 1.4em;
            min-height: unset;
        }
        .phase-subtitle {
            height: unset;
        }
        .phase-number {
            font-size: 1.1em;
        }
        .phase-description {
            font-size: 0.85em;
        }
        .phase-divider {
            margin: 25px 0;
        }
        .phase-panel .inner-box {
            padding: 30px 20px;
        }
    }
</style>

<section class="cs_experience_wrap cs_blog_experiences_1 position-relative hero-bg d-flex align-items-center justify-content-center p-3 p-md-4" id="{{ theme_option('opt-phase-section_id') }}">
    <div class="cs_shape cs_shape_position_1"></div>
    <div class="container">
        <div class="cs_height_120 cs_height_lg_80"></div>
        <div class="background-slideshow">
            <div class="bg-image active" style="background-image: url('{{ Theme::asset()->url('images/sky-and-start.jpg') }}');"></div>
        </div>
        <div class="hero-overlay"></div>
        <div class="container text-center position-relative" style="z-index: 1;">
            <div class="cs_height_50 cs_height_lg_50"></div>
            <div class="grid-wrapper phases-container">
                @for ($item = 1; $item <= 5; $item++)
                    <div class="phase-panel">
                        <div class="inner-box">
                            <div class="phase-header">
                                <span class="phase-number">PHASE {{ str_pad($item, 2, '0', STR_PAD_LEFT) . ' '  }}</span>
                                <h2 class="phase-title">{{ theme_option('opt-phase_' . $item . '_heading') }}</h2>
                                <p class="phase-subtitle">{{ theme_option('opt-phase_' . $item . '_sub_heading') }}</p>
                            </div>
                            <hr class="phase-divider">
                            <p class="phase-description">
                                {{ theme_option('opt-phase_' . $item . '_description') }}
                            </p>
                        </div>
                    </div>
                @endfor
            </div>
        </div>
        <div class="cs_height_120 cs_height_lg_80"></div>
    </div>
</section>
