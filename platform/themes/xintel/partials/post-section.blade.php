<section class="post-section bg-black" id="careers">
    <div class="auto-container">
        <div class="row clearfix">
            <div class="d-flex justify-content-between align-items-center mb-4">
                <p class="h3 text-white font-weight-bold" style="font-size: 70px;">{{ __('Blog') }}</p>
                <div>
                    <a href="{{ route('public.blog') }}">
                        <span class="btn_show_more">{{ __('Xem thêm') }}</span>
                    </a>
                </div>
            </div>
            @php
                $posts = get_latest_posts(3);
            @endphp

            @foreach ($posts as $post)
                <!-- Gallery Block One -->
                <div class="gallery-block_one col-lg-4 col-md-6 col-sm-12">
                    <div class="gallery-block_one-inner wow {{ $loop->first ? 'fadeInLeft' : ($loop->last ? 'fadeInRight' : 'fadeInUp') }} animated"
                        data-wow-delay="0ms" data-wow-duration="1500ms"
                        style="visibility: visible; animation-duration: 1500ms; animation-delay: 0ms; animation-name: {{ $loop->first ? 'fadeInLeft' : ($loop->last ? 'fadeInRight' : 'fadeInUp') }};">
                        <div class="gallery-block_one-content">
                            <div class="post-block_one-image mb-2">
                                <a href="{{ $post->url }}">
                                    <img class="post_image" src="{{ RvMedia::getImageUrl($post->image, null, false, RvMedia::getDefaultImage()) }}"
                                        alt="{{ $post->name }}">
                                </a>
                            </div>
                            @if ($post->categories->isNotEmpty())
                                <div class="gallery-block_one-title">{{ $post->categories->first()->name }}</div>
                            @endif
                            <h4 class="gallery-block_one-heading"><a href="{{ $post->url }}">{{ $post->name }}</a>
                            </h4>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</section>
