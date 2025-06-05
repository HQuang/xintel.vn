<style>

    .cs_partners_wrap {
        background-color: #10172d; /* Nền đậm hơn một chút cho container */
        padding: 40px 20px;
        text-align: center;
        overflow: hidden; /* Để chứa animation cuộn */
        position: relative;
        min-height: 50vh;
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

    /* Điều chỉnh màu sắc cụ thể cho từng logo nếu cần */
    .logo-item.binance span { color: #F0B90B; }
    .logo-item.ethereum span { color: #627EEA; }
    .logo-item.arbitrum span { color: #28A0F0; }
    .logo-item.optimism span { color: #FF0420; }
    .logo-item.bitcoin span { color: #F7931A; }
    .logo-item.omni span { color: #00AEEF; } /* Giả sử màu cho Omni */
    .logo-item.kucoin span { color: #24AE8F; }


    .robot-mascot {
        margin-top: 40px; /* Khoảng cách từ logo xuống robot */
        position: relative;
        z-index: 10; /* Đảm bảo robot nổi bật */
    }

    .robot-mascot img {
        max-width: 180px; /* Kích thước robot */
        height: auto;
        filter: drop-shadow(0 0 15px rgba(0, 191, 255, 0.5));
        animation: float 3s ease-in-out infinite; /* Animation lơ lửng cho robot */
    }

    /* Keyframes cho animation cuộn từ phải sang trái */
    @keyframes scroll-left {
        0% {
            transform: translateX(0%);
        }
        100% {
            transform: translateX(-100%); /* Di chuyển toàn bộ chiều rộng của track */
        }
    }

    /* Keyframes cho animation cuộn từ trái sang phải */
    @keyframes scroll-right {
        0% {
            transform: translateX(-100%);
        }
        100% {
            transform: translateX(0%);
        }
    }

    /* Keyframes cho animation lơ lửng của robot */
    @keyframes float {
        0% {
            transform: translateY(0px);
        }
        50% {
            transform: translateY(-10px);
        }
        100% {
            transform: translateY(0px);
        }
    }

    /* Responsive adjustments */
    @media (max-width: 768px) {
        .cs_partners_wrap {
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

<section class="cs_partners_wrap cs_blog_partners_1 position-relative hero-bg d-flex align-items-center justify-content-center p-3 p-md-4" id="{{ theme_option('opt-partners_section_id') }}">
    <div class="cs_height_120 cs_height_lg_80"></div>
    <div class="container">
        <div class="background-slideshow">
            <div class="bg-image active" style="background-image: url('{{ Theme::asset()->url('images/experiences/experience_bg.png') }}');"></div>
        </div>
        <div class="hero-overlay"></div>

        <div class="container text-center position-relative" style="z-index: 1;">
            <div class="row justify-content-center">
                @php
                    $itemInfor = theme_option('opt-partners_section_items');
                    $itemInfor = json_decode($itemInfor, true);
                    $newAppInfor = [];
                    if ($itemInfor) {
                        foreach ($itemInfor as $item) {
                            $newAppInfor[] = Arr::pluck($item, 'value', 'key');
                        }
                    }

                @endphp
                <div class="logo-marquee" aria-hidden="true">
                    <div class="logo-track">
                        @foreach($newAppInfor as $partner)
                        <div class="logo-item {{ $partner['title'] }}">
                            <img src="{{ RvMedia::getImageUrl($partner['thumbnail']) }}" alt="{{ $partner['title'] }}">
                        </div>
                        @endforeach
                    </div>
                </div>

                <div class="logo-marquee" aria-hidden="true">
                    <div class="logo-track reverse">
                        @foreach($newAppInfor as $partner)
                            <div class="logo-item {{ $partner['title'] }}">
                                <img src="{{ RvMedia::getImageUrl($partner['thumbnail']) }}" alt="{{ $partner['title'] }}">
                            </div>
                        @endforeach
                    </div>
                </div>

                <div class="robot-mascot">
                    <img src="{{ RvMedia::getImageUrl(theme_option('opt-partners_section_mascot')) }}" alt="Linh vật Robot" class="animated pulse infinite">
                </div>
            </div>
        </div>
    </div>
    <div class="cs_height_120 cs_height_lg_80"></div>
</section>

<script>
    // JavaScript không thực sự cần thiết cho hiệu ứng cuộn chính vì nó được xử lý bằng CSS animations.
    // Tuy nhiên, bạn có thể thêm JS để điều khiển tốc độ, tạm dừng khi hover, etc.

    // Ví dụ: Tạm dừng animation khi hover chuột vào track logo
    const logoTracks = document.querySelectorAll('.logo-track');
    logoTracks.forEach(track => {
        track.addEventListener('mouseenter', () => {
            track.style.animationPlayState = 'paused';
        });
        track.addEventListener('mouseleave', () => {
            track.style.animationPlayState = 'running';
        });
    });
</script>
