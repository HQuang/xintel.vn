<?php

namespace Theme\Xintel\Http\Controllers;

use Botble\Blog\Models\Post;
use Botble\Theme\Facades\Theme;
use Botble\Theme\Http\Controllers\PublicController;

class XintelController extends PublicController
{
    public function getBlog()
    {
        $posts = Post::query()
            ->wherePublished()
            ->orderByDesc('created_at')
            ->paginate((int)theme_option('number_of_posts_in_a_category', 12));


        return Theme::scope('loop', compact('posts'))->render();
    }
}
