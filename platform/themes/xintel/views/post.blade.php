<section class="single-work page-wrapper image-layer" style="background-image:url({{ Theme::asset()->url('images/background/4.jpg') }})">
    <div class="auto-container">
        <div class="row clearfix">
            <!-- Column -->
            <div class="column col-lg-6 col-md-12 col-sm-12">
                <div class="single-work_image">
                    <img src="{{ RvMedia::getImageUrl($post->image, null, false, RvMedia::getDefaultImage()) }}"
                        alt="{{ $post->name }}">
                </div>
            </div>
            <!-- Column -->
            <div class="column col-lg-6 col-md-12 col-sm-12">
                <h2 class="single-work_title">{{ $post->name }}</h2>
                <div class="ck-content">
                    {!! BaseHelper::clean($post->content) !!}
                </div>
                <ul class="single-work_list">
                    <li>
                        Date
                        <span>{{ $post->created_at->format('d F Y') }}</span>
                    </li>
                    @if ($post->categories->isNotEmpty())
                        <li>
                            Category
                            <span>
                                @foreach ($post->categories as $category)
                                    <a href="{{ $category->url }}">{{ $category->name }}</a>
                                    @if (!$loop->last)
                                        ,
                                    @endif
                                @endforeach
                            </span>
                        </li>
                    @endif
                    @if ($post->tags->isNotEmpty())
                        <li>
                            Tags
                            <span>
                                @foreach ($post->tags as $tag)
                                    <a href="{{ $tag->url }}">{{ $tag->name }}</a>
                                    @if (!$loop->last)
                                        ,
                                    @endif
                                @endforeach
                            </span>
                        </li>
                    @endif
                    @if ($post->author)
                        <li>
                            Author
                            <span>{{ $post->author->name }}</span>
                        </li>
                    @endif
                </ul>
            </div>
        </div>
    </div>
</section>
