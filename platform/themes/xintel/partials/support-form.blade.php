<style>

    .cs_support_form_wrap {
        background-color: #10172d; /* Nền đậm hơn một chút cho container */
        padding: 40px 20px;
        overflow: hidden; /* Để chứa animation cuộn */
        position: relative;
        min-height: 50vh;
    }

    .cs_support_form_wrap input,
    .cs_support_form_wrap textarea {
        border-radius: 20px;
    }

    .logo-marquee {
        width: 100%;
        overflow: hidden;
        padding: 15px 0;
        white-space: nowrap; /* Ngăn các logo xuống dòng */
    }

    .logo-track {
        display: inline-block; /* Cho phép animation */
        animation: scroll-left 30s linear infinite; /* Tốc độ và lặp lại animation */
    }

    .logo-track.reverse {
        animation: scroll-right 30s linear infinite; /* Tốc độ và lặp lại animation */
    }


    .logo-item {
        display: inline-flex; /* Sắp xếp logo và tên thẳng hàng */
        align-items: center;
        justify-content: center;
        padding: 10px 15px;
        margin: 0 12px; /* Khoảng cách giữa các logo */
        height: 50px; /* Chiều cao cố định cho logo */
        min-width: 150px; /* Độ rộng tối thiểu */
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .logo-item:hover {
        transform: translateY(-5px);
        box-shadow: 0 5px 15px rgba(0, 191, 255, 0.2);
    }

    .logo-item img {
        max-height: 30px; /* Chiều cao tối đa của ảnh logo */
        width: auto;
        margin-right: 8px;
    }

    .logo-item span {
        font-size: 0.9rem;
        font-weight: 600;
        color: #c0c0c0; /* Màu chữ cho tên logo */
    }

    /* Responsive adjustments */
    @media (max-width: 768px) {
        .cs_support_form_wrap {
            padding: 20px 10px;
        }
        .logo-item {
            min-width: 120px;
            padding: 8px 10px;
            margin: 0 8px;
        }
        .logo-item span {
            font-size: 0.8rem;
        }
        .robot-mascot img {
            max-width: 120px;
        }
        .logo-track {
            animation-duration: 20s; /* Tăng tốc độ cuộn trên mobile */
        }
        .logo-track.reverse {
            animation-duration: 20s;
        }
    }
</style>

<section class="cs_support_form_wrap cs_blog_support_form_1 position-relative hero-bg d-flex align-items-center justify-content-center p-3 p-md-4" id="{{ theme_option('opt-support-form_section_id') }}">
    <div class="container">
    <div class="cs_height_120 cs_height_lg_80"></div>
        <div class="background-slideshow">
            <div class="bg-image active" style="background-image: url('{{ Theme::asset()->url('images/experiences/experience_bg.png') }}');"></div>
        </div>
        <div class="hero-overlay"></div>

        <div class="container position-relative" style="z-index: 1;">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <form action="{{ route('public.send.contact') }}" method="post" class="support-form text-left">
                        @csrf
                        <div class="mb-3 animated fadeInUp" style="animation-delay: 0.6s;">
                            <label for="email" class="form-label">Email</label>
                            <input type="email" name="email" value="{{ old('email') }}" class="form-control" placeholder="{{ __('Email') }}" required>
                        </div>
                        <div class="mb-4 animated fadeInUp" style="animation-delay: 1s;">
                            <label for="message" class="form-label">Nội dung</label>
                            <textarea name="content" rows="5" class="form-control" placeholder="{{ __('Bạn cần hỗ trợ gì ?') }}" required>{{ old('content') }}</textarea>
                        </div>
                        <div class="text-center animated fadeInUp" style="animation-delay: 1.2s;">
                            <input type="hidden" name="name" value="" >
                            <button type="submit" class="btn btn-submit-gradient text-white fw-bold py-3 px-4 py-sm-3 px-sm-5 rounded-pill fs-5 shadow-lg animated zoomIn" style="animation-delay: 0.6s;">
                                {{ __('Gửi thư') }}
                            </button>
                        </div>
                        <div class="contact-message contact-success-message" style="display: none"></div>
                        <div class="contact-message contact-error-message" style="display: none"></div>
                    </form>
                </div>
            </div>
        </div>
    <div class="cs_height_120 cs_height_lg_80"></div>
    </div>
</section>
