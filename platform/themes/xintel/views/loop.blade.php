<section class="post-section bg-black">
    <div class="auto-container">
        <div class="row clearfix">
            <section class="page-title">
                <div class="auto-container">
                    <h1 class="page-title_heading">Blog</h1>
                </div>
            </section>

            @if ($posts->isNotEmpty())
                @foreach ($posts as $post)
                    <!-- Gallery Block One -->
                    <div class="gallery-block_one col-lg-4 col-md-6 col-sm-12 mb-4">
                        <div class="gallery-block_one-inner wow fadeIn animated" data-wow-delay="0ms"
                            data-wow-duration="1500ms"
                            style="visibility: visible; animation-duration: 1500ms; animation-delay: 0ms; animation-name: fadeIn;">
                            <div class="gallery-block_one-content">
                                <div class="post-block_one-image mb-2">
                                    <a href="{{ $post->url }}">
                                        <img class="post_image"
                                            src="{{ RvMedia::getImageUrl($post->image, null, false, RvMedia::getDefaultImage()) }}"
                                            alt="{{ $post->name }}">
                                    </a>
                                </div>
                                @if ($post->categories->isNotEmpty())
                                    <div class="gallery-block_one-title">{{ $post->categories->first()->name }}</div>
                                @endif
                                <h4 class="gallery-block_one-heading">
                                    <a href="{{ $post->url }}">{{ $post->name }}</a>
                                </h4>
                                <p class="text-white-50">{{ Str::limit($post->description, 100) }}</p>
                            </div>
                        </div>
                    </div>
                @endforeach

                <!-- Pagination -->
                <div class="col-12 mt-4">
                    <div class="pagination-wrapper">
                        {!! $posts->withQueryString()->links('pagination::bootstrap-4') !!}
                    </div>
                </div>
            @else
                <div class="col-12 text-center">
                    <p class="text-white">{{ __('No posts found!') }}</p>
                </div>
            @endif
        </div>
    </div>
</section>