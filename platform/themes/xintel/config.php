<?php

use Botble\Theme\Theme;

return [

    /*
    |--------------------------------------------------------------------------
    | Inherit from another theme
    |--------------------------------------------------------------------------
    |
    | Set up inherit from another if the file is not exists,
    | this is work with "layouts", "partials" and "views"
    |
    | [Notice] assets cannot inherit.
    |
    */

    'inherit' => null, //default

    /*
    |--------------------------------------------------------------------------
    | Listener from events
    |--------------------------------------------------------------------------
    |
    | You can hook a theme when event fired on activities
    | this is cool feature to set up a title, meta, default styles and scripts.
    |
    | [Notice] these events can be overridden by package config.
    |
    */

    'events' => [

        // Before event inherit from package config and the theme that call before,
        // you can use this event to set meta, breadcrumb template or anything
        // you want inheriting.
        'before' => function ($theme) {
            // You can remove this line anytime.
        },

        // Listen on event before render a theme,
        // this event should call to assign some assets,
        // breadcrumb template.
        'beforeRenderTheme' => function (Theme $theme) {
            // Partial composer.
            // $theme->partialComposer('header', function($view) {
            //     $view->with('auth', \Auth::user());
            // });

            // You may use this event to set up your assets.
            $theme->asset()->usePath()->add('style', 'css/style.css');
            $theme->asset()->usePath()->add('bootstrap', 'css/bootstrap.css');
            $theme->asset()->usePath()->add('animate', 'css/animate.css');
            $theme->asset()->usePath()->add('custom-animate', 'css/custom-animate.css');
            $theme->asset()->usePath()->add('font-awesome', 'css/font-awesome.css');
            $theme->asset()->usePath()->add('footer', 'css/footer.css');
            $theme->asset()->usePath()->add('global', 'css/global.css');
            $theme->asset()->usePath()->add('header', 'css/header.css');
            $theme->asset()->usePath()->add('odometer-theme-default', 'css/odometer-theme-default.css');
            $theme->asset()->usePath()->add('swiper', 'css/swiper.min.css');

            $theme->asset()->container('footer')->usePath()->add('jquery', 'js/jquery.js');
            $theme->asset()->container('footer')->usePath()->add('popper', 'js/popper.min.js');
            $theme->asset()->container('footer')->usePath()->add('bootstrap', 'js/bootstrap.min.js');
            $theme->asset()->container('footer')->usePath()->add('appear', 'js/appear.js');
            $theme->asset()->container('footer')->usePath()->add('wow', 'js/wow.js');
            $theme->asset()->container('footer')->usePath()->add('swiper', 'js/swiper.min.js');
            $theme->asset()->container('footer')->usePath()->add('odometer', 'js/odometer.js');
            $theme->asset()->container('footer')->usePath()->add('gsap', 'js/gsap.min.js');
            $theme->asset()->container('footer')->usePath()->add('split-text', 'js/SplitText.min.js');
            $theme->asset()->container('footer')->usePath()->add('scroll-trigger', 'js/ScrollTrigger.min.js');
            $theme->asset()->container('footer')->usePath()->add('scroll-to-plugin', 'js/ScrollToPlugin.min.js');
            $theme->asset()->container('footer')->usePath()->add('scroll-smoother', 'js/ScrollSmoother.min.js');
            $theme->asset()->container('footer')->usePath()->add('script', 'js/script.js');

            if (function_exists('shortcode')) {
                $theme->composer(['page', 'post'], function (\Botble\Shortcode\View\View $view) {
                    $view->withShortcodes();
                });
            }
        },

        // Listen on event before render a layout,
        // this should call to assign style, script for a layout.
        'beforeRenderLayout' => [

            'default' => function ($theme) {
                $theme->asset()->usePath()->add('responsive', 'css/responsive.css');

                // $theme->asset()->usePath()->add('ipad', 'css/layouts/ipad.css');
            }
        ]
    ]
];
