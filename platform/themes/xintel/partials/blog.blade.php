<section class="cs_shape_wrap cs_blog_shapes_1 position-relative" id="{{ theme_option('opt-blog_section_id') }}">
    <div class="cs_shape cs_shape_position_1"></div>
    <div class="cs_shape cs_shape_position_2"></div>
    <div class="cs_shape cs_shape_position_3"></div>
    <div class="cs_height_120 cs_height_lg_80"></div>
    <div class="container wow fadeIn" data-wow-duration="1s" data-wow-delay="0.35s">
        <div class="cs_section_heading cs_style_1">
            <h1 class="cs_section_title text-uppercase mb-0">{{ theme_option('opt-blog_section_handing') }}</h1>
        </div>
        <div class="cs_height_50 cs_height_lg_40"></div>
        <div id="blog-posts-container" class="row cs_gap_y_24">
            @php
                $posts = get_all_posts(true, theme_option('opt-blog_section_post_per_page'));
            @endphp

            @foreach ($posts as $post)
            <div class="col-lg-4 col-md-6">
                <div class="cs_post cs_style_1">
                    <div class="cs_post_inner">
                        <a href="{{ $post->url }}" class="cs_post_thumbnail cs_zoom">
                            <img src="{{ RvMedia::getImageUrl($post->image, null, false, RvMedia::getDefaultImage()) }}" alt="{{ $post->name }}" class="cs_zoom_in">
                        </a>
                        <div class="cs_post_content">
                            <div class="cs_post_meta_wrapper">
                                <div class="cs_post_meta cs_semibold">{{ $post->created_at->format('M d, Y') }}</div>
                                <div class="cs_post_meta_separator"></div>
                                <div class="cs_post_meta cs_semibold">{{ $post->author ? 'BY ' . $post->author->name : 'BY ADMIN' }}</div>
                            </div>
                            <h3 class="cs_post_title cs_semibold mb-0"><a href="{{ $post->url }}">{{ $post->name }}</a></h3>
                            <p class="cs_post_subtitle cs_normal mb-0">{{ $post->description }}</p>
                            <a href="{{ $post->url }}" class="cs_post_btn">
                                <span>Read More</span>
                                <span><i class="fa-solid fa-arrow-right-long"></i></span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach

        </div>
        <div class="cs_height_50 cs_height_lg_40"></div>
        @if ($posts instanceof \Illuminate\Contracts\Pagination\LengthAwarePaginator && $posts->lastPage() > 1)
            <ul id="blog-pagination" class="pagination cs-center cs-primary_font text-uppercase cs_mp0">
                {{-- Previous Page Link --}}
                @if ($posts->onFirstPage())
                    <li class="page-item disabled"><span class="page-link">Previous</span></li>
                @else
                    <li class="page-item"><a class="page-link" href="{{ $posts->previousPageUrl() }}" data-page="{{ $posts->currentPage() - 1 }}">Previous</a></li>
                @endif

                {{-- Pagination Elements --}}
                @for ($i = 1; $i <= $posts->lastPage(); $i++)
                    <li class="page-item {{ ($posts->currentPage() == $i) ? 'active' : '' }}">
                        <a class="page-link" href="{{ $posts->url($i) }}" data-page="{{ $i }}">{{ $i }}</a>
                    </li>
                @endfor

                {{-- Next Page Link --}}
                @if ($posts->hasMorePages())
                    <li class="page-item"><a class="page-link" href="{{ $posts->nextPageUrl() }}" data-page="{{ $posts->currentPage() + 1 }}">Next</a></li>
                @else
                    <li class="page-item disabled"><span class="page-link">Next</span></li>
                @endif
            </ul>
        @endif
    </div>
    <div class="cs_height_120 cs_height_lg_80"></div>
</section>


<style>
#blog-posts-container.loading {
    position: relative;
    min-height: 200px;
}

#blog-posts-container.loading:after {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(255, 255, 255, 0.7) url('data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDQiIGhlaWdodD0iNDQiIHZpZXdCb3g9IjAgMCA0NCA0NCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBzdHJva2U9IiM2NjY2NjYiPiAgICA8ZyBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIHN0cm9rZS13aWR0aD0iMiI+ICAgICAgICA8Y2lyY2xlIGN4PSIyMiIgY3k9IjIyIiByPSIxIj4gICAgICAgICAgICA8YW5pbWF0ZSBhdHRyaWJ1dGVOYW1lPSJyIiAgICAgICAgICAgICAgICBiZWdpbj0iMHMiIGR1cj0iMS40cyIgICAgICAgICAgICAgICAgdmFsdWVzPSIxOyAyMCIgICAgICAgICAgICAgICAgY2FsY01vZGU9InNwbGluZSIgICAgICAgICAgICAgICAga2V5VGltZXM9IjA7IDEiICAgICAgICAgICAgICAgIGtleVNwbGluZXM9IjAuMTY1LCAwLjg0LCAwLjQ0LCAxIiAgICAgICAgICAgICAgICByZXBlYXRDb3VudD0iaW5kZWZpbml0ZSIgLz4gICAgICAgICAgICA8YW5pbWF0ZSBhdHRyaWJ1dGVOYW1lPSJzdHJva2Utb3BhY2l0eSIgICAgICAgICAgICAgICAgYmVnaW49IjBzIiBkdXI9IjEuNHMiICAgICAgICAgICAgICAgIHZhbHVlcz0iMTsgMCIgICAgICAgICAgICAgICAgY2FsY01vZGU9InNwbGluZSIgICAgICAgICAgICAgICAga2V5VGltZXM9IjA7IDEiICAgICAgICAgICAgICAgIGtleVNwbGluZXM9IjAuMywgMC42MSwgMC4zNTUsIDEiICAgICAgICAgICAgICAgIHJlcGVhdENvdW50PSJpbmRlZmluaXRlIiAvPiAgICAgICAgPC9jaXJjbGU+ICAgICAgICA8Y2lyY2xlIGN4PSIyMiIgY3k9IjIyIiByPSIxIj4gICAgICAgICAgICA8YW5pbWF0ZSBhdHRyaWJ1dGVOYW1lPSJyIiAgICAgICAgICAgICAgICBiZWdpbj0iLTAuOXMiIGR1cj0iMS40cyIgICAgICAgICAgICAgICAgdmFsdWVzPSIxOyAyMCIgICAgICAgICAgICAgICAgY2FsY01vZGU9InNwbGluZSIgICAgICAgICAgICAgICAga2V5VGltZXM9IjA7IDEiICAgICAgICAgICAgICAgIGtleVNwbGluZXM9IjAuMTY1LCAwLjg0LCAwLjQ0LCAxIiAgICAgICAgICAgICAgICByZXBlYXRDb3VudD0iaW5kZWZpbml0ZSIgLz4gICAgICAgICAgICA8YW5pbWF0ZSBhdHRyaWJ1dGVOYW1lPSJzdHJva2Utb3BhY2l0eSIgICAgICAgICAgICAgICAgYmVnaW49Ii0wLjlzIiBkdXI9IjEuNHMiICAgICAgICAgICAgICAgIHZhbHVlcz0iMTsgMCIgICAgICAgICAgICAgICAgY2FsY01vZGU9InNwbGluZSIgICAgICAgICAgICAgICAga2V5VGltZXM9IjA7IDEiICAgICAgICAgICAgICAgIGtleVNwbGluZXM9IjAuMywgMC42MSwgMC4zNTUsIDEiICAgICAgICAgICAgICAgIHJlcGVhdENvdW50PSJpbmRlZmluaXRlIiAvPiAgICAgICAgPC9jaXJjbGU+ICAgIDwvZz48L3N2Zz4=') no-repeat center center;
    z-index: 1;
}
</style>
