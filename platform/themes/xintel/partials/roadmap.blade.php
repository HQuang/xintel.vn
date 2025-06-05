<style>

    .roadmap-header {
        text-align: center;
        color: #FFFFFF;
        font-weight: 800; /* Rất đậm */
        font-size: 2.75rem; /* Kích thước lớn */
        margin-bottom: 50px;
        text-transform: uppercase; /* Chữ hoa */
    }

    .roadmap-column {
        background-color: #1118274a; /* Nền cho từng cột roadmap */
        border-right: 1px solid;
        border-image: linear-gradient(to bottom, #00ffc1, rgb(22 10 195)) 1 100%;
        padding: 30px 25px; /* Padding bên trong cột cho nội dung */
        height: 100%; /* Đảm bảo các cột có chiều cao bằng nhau trong một hàng */
        /* Loại bỏ margin-bottom để các cột nằm sát nhau theo chiều dọc nếu wrap */
        /* transition: transform 0.3s ease, box-shadow 0.3s ease; /* Loại bỏ hiệu ứng hover mặc định nếu không cần */
    }

    .roadmap-item:last-child .roadmap-column{
        border-right: unset;
    }

    /* Loại bỏ hiệu ứng hover không cần thiết theo ảnh mới */
    /*
    .roadmap-column:hover {
        transform: translateY(-5px);
        box-shadow: 0 10px 20px rgba(0,0,0,0.2);
    }
    */

    .roadmap-column .quarter-number-container {
        display: flex;
        align-items: center;
        margin-bottom: 20px;
    }

    .roadmap-column .quarter-number {
        background-color: #1D293E; /* Nền cho số thứ tự */
        color: #3B82F6; /* Màu xanh cho số */
        font-weight: 700;
        font-size: 1.25rem;
        width: 40px;
        height: 40px;
        border-radius: 50%;
        display: inline-flex;
        align-items: center;
        justify-content: center;
        margin-right: 15px; /* Khoảng cách với tiêu đề quý */
        border: 2px solid #3B82F6;
    }

    .roadmap-column .quarter-title {
        color: #FFFFFF;
        font-weight: 700;
        font-size: 1.2rem; /* Kích thước tiêu đề quý */
    }

    .roadmap-column ul {
        list-style: none;
        padding-left: 0;
    }

    .roadmap-column ul li {
        color: #A0AEC0; /* Màu chữ cho các mục */
        margin-bottom: 12px;
        font-size: 0.95rem;
        line-height: 1.6;
        padding-left: 25px; /* Tạo khoảng trống cho dấu đầu dòng tùy chỉnh */
        position: relative;
    }

    .roadmap-column ul li::before {
        content: "\f111"; /* Font Awesome circle icon */
        font-family: "Font Awesome 6 Free";
        font-weight: 900; /* Cần thiết cho solid icons */
        color: #3B82F6; /* Màu xanh cho dấu đầu dòng */
        font-size: 0.6em; /* Kích thước dấu đầu dòng */
        position: absolute;
        left: 5px;
        top: 7px; /* Điều chỉnh vị trí dọc */
    }

    /* Loại bỏ custom border colors for columns khi hover/active */

    @media (min-width: 768px) {
        .row-eq-height {
            display: flex;
            flex-wrap: wrap;
        }
        .row-eq-height > [class*='col-'] {
            display: flex;
            flex-direction: column;
        }
    }

</style>

<section class="cs_history cs_style_1 cs_shape_wrap cs_history_shapes_1 position-relative" id="{{ theme_option('opt-roadmap_section_id') }}">
    <div class="cs_shape cs_shape_position_2"></div>
    <div class="cs_shape cs_shape_position_3"></div>
    <div class="cs_height_120 cs_height_lg_80"></div>
    <div class="container">
        <div class="cs_section_heading cs_style_1 text-center">
            <h2 class="cs_section_title mb-0 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.35s">{{ theme_option('opt-roadmap_section_handing') }}</h2>
        </div>
        <div class="cs_height_50 cs_height_lg_50"></div>
        <div class="row cs_gap_y_30 align-items-center cs_md_reverse">
            @for ($line = 1; $line <= 2; $line++)
                <div class="row row-eq-height g-0 mb-5">
                @for ($item = 1; $item <= 3; $item++)
                    @if(theme_option('opt-roadmap_row_' . $line . '_item_' . $item . '_title') || theme_option('opt-roadmap_row_' . $line . '_item_' . $item . '_description'))
                        <div class="col-lg-4 col-md-6 animated fadeInUp roadmap-item" style="animation-delay: 0.2s;">
                            <div class="roadmap-column q1">
                                <p class="quarter-number">{{ $item }}</p>
                                <h3 class="quarter-title">{{ theme_option('opt-roadmap_row_' . $line . '_item_' . $item . '_title') }}</h3>
                                {{ BaseHelper::html(theme_option('opt-roadmap_row_' . $line . '_item_' . $item . '_description')) }}
                            </div>
                        </div>
                    @endif
                @endfor
                </div>
            @endfor
        </div>
    </div>
</section>
