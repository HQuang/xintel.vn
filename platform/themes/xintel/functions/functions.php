<?php

use Botble\Theme\Supports\ThemeSupport;
use Botble\Media\Facades\RvMedia;
use Illuminate\Routing\Events\RouteMatched;

app()->booted(function () {
    theme_option()
        // Hero section
        ->setSection([
            'title'      => __('Hero section'),
            'desc'       => __('Banner settings for website'),
            'id'         => 'opt-xintel-mobile-app',
            'subsection' => true,
            'icon'       => 'fa fa-image',
        ])
        ->setField([
            'id'         => 'opt-xintel-mobile-app_section_id',
            'section_id' => 'opt-xintel-mobile-app',
            'type'       => 'text',
            'label'      => __('Section Id'),
            'attributes' => [
                'name'    => 'opt-xintel-mobile-app_section_id',
                'value'   => 'xintel-mobile-app',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
            'helper'     => __('Sử dụng đặt vào cuối liên kết trong menu. <br> Ví dụ: https://domain.com/#section_id'),
        ])
        ->setField([
            'id'         => 'opt-xintel-mobile-app-section_heading',
            'section_id' => 'opt-xintel-mobile-app',
            'type'       => 'text',
            'label'      => __('Section Heading'),
            'attributes' => [
                'name'    => 'opt-xintel-mobile-app-section_heading',
                'value'   => 'Xintel Moblie App',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter section heading'),
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-xintel-mobile-app-section_left_text',
            'section_id' => 'opt-xintel-mobile-app',
            'type'       => 'textarea',
            'label'      => __('Banner Text (Left)'),
            'attributes' => [
                'name'    => 'opt-xintel-mobile-app-section_left_text',
                'value'   => "XIN is not just a simple travel platform; it is a space for users to express their passion for sharing stories of exploration and self-expression. Sharing photos, videos, and travel experiences has become an essential part of online life, and many social platforms are leveraging this trend to offer travel related services and experiences.",
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter banner text'),
                    'data-counter' => 1000,
                    'rows'         => 4,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-xintel-mobile-app-section_icon_download_app',
            'section_id' => 'opt-xintel-mobile-app',
            'type'       => 'repeater',
            'label'      => __('Download App Icon'),
            'attributes' => [
                'name'   => 'opt-xintel-mobile-app-section_icon_download_app',
                'value'  => null,
                'fields' => [
                    [
                        'type'       => 'mediaImage',
                        'label'      => __('App icon'),
                        'attributes' => [
                            'name'  => 'logo',
                            'value' => null,
                        ],
                    ],
                    [
                        'type'       => 'text',
                        'label'      => __('URL'),
                        'attributes' => [
                            'name'    => 'url',
                            'value'   => null,
                            'options' => [
                                'class'        => 'form-control',
                            ],
                        ],
                    ],
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-xintel-mobile-app-section_left_image',
            'section_id' => 'opt-xintel-mobile-app',
            'type'       => 'mediaImage',
            'label'      => __('Banner Background'),
            'attributes' => [
                'name'    => 'opt-xintel-mobile-app-section_left_image',
                'value'   => null,
            ],
        ])

        // Section 1.
        ->setSection([
            'title'      => __('Section 1. What is Xintel?'),
            'desc'       => __('What is xintel?'),
            'id'         => 'opt-what-is-xintel',
            'subsection' => true,
            'icon'       => 'fa fa-images',
        ])
        ->setField([
            'id'         => 'opt-what-is-xintel_section_id',
            'section_id' => 'opt-what-is-xintel',
            'type'       => 'text',
            'label'      => __('Section Id'),
            'attributes' => [
                'name'    => 'opt-what-is-xintel_section_id',
                'value'   => 'what-is-xintel',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
            'helper'     => __('Sử dụng đặt vào cuối liên kết trong menu. <br> Ví dụ: https://domain.com/#section_id'),
        ])
        ->setField([
            'id'         => 'opt-what-is-xintel-section_heading',
            'section_id' => 'opt-what-is-xintel',
            'type'       => 'text',
            'label'      => __('Gallery Heading'),
            'attributes' => [
                'name'    => 'opt-what-is-xintel-section_heading',
                'value'   => 'WHAT IS XINTEL?',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter gallery title'),
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-what-is-xintel-section_sub_heading',
            'section_id' => 'opt-what-is-xintel',
            'type'       => 'text',
            'label'      => __('Section Sub Heading'),
            'attributes' => [
                'name'    => 'opt-what-is-xintel-section_sub_heading',
                'value'   => "XIN - Xfactor Intelligence",
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter gallery sub title'),
                    'data-counter' => 500,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-what-is-xintel-section_description',
            'section_id' => 'opt-what-is-xintel',
            'type'       => 'text',
            'label'      => __('Section Description'),
            'attributes' => [
                'name'    => 'opt-what-is-xintel-section_description',
                'value'   => "A groundbreaking travel app that combines social networking with payment gateways. XIN empowers you to generate income from every journey, expand your network, and connect with local communities, while immersing yourself in diverse cultures. Life isn’t just about making money — it’s about experiencing and sharing. Let XIN take you to a new world where life becomes more exciting and prosperous every day.",
                'options' => [
                    'class'        => 'form-control',
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-what-is-xintel-section_image_left',
            'section_id' => 'opt-what-is-xintel',
            'type'       => 'mediaImage',
            'label'      => __('Section Image Left'),
            'attributes' => [
                'name'    => 'opt-what-is-xintel-section_image_left',
                'value'   => null,
            ],
        ])

        // Section 2: Vision
        ->setSection([
            'title'      => __('Section 2. Vision'),
            'desc'       => __('Vision'),
            'id'         => 'opt-vision',
            'subsection' => true,
            'icon'       => 'fa fa-images',
        ])
        ->setField([
            'id'         => 'opt-vision_section_id',
            'section_id' => 'opt-vision',
            'type'       => 'text',
            'label'      => __('Section Id'),
            'attributes' => [
                'name'    => 'opt-vision_section_id',
                'value'   => 'vision',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
            'helper'     => __('Sử dụng đặt vào cuối liên kết trong menu. <br> Ví dụ: https://domain.com/#section_id'),
        ])
        ->setField([
            'id'         => 'opt-vision-section_heading',
            'section_id' => 'opt-vision',
            'type'       => 'text',
            'label'      => __('Gallery Heading'),
            'attributes' => [
                'name'    => 'opt-vision-section_heading',
                'value'   => 'Vision',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter gallery title'),
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-vision-section_description',
            'section_id' => 'opt-vision',
            'type'       => 'textarea',
            'label'      => __('Section Description'),
            'attributes' => [
                'name'    => 'opt-vision-section_description',
                'value'   => "A groundbreaking travel app that combines social networking with payment gateways. XIN empowers you to generate income from every journey, expand your network, and connect with local communities, while immersing yourself in diverse cultures. Life isn’t just about making money — it’s about experiencing and sharing. Let XIN take you to a new world where life becomes more exciting and prosperous every day.",
                'options' => [
                    'class'        => 'form-control',
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-vision-section_image_right',
            'section_id' => 'opt-vision',
            'type'       => 'mediaImage',
            'label'      => __('Section Image Right'),
            'attributes' => [
                'name'    => 'opt-vision-section_image_right',
                'value'   => null,
            ],
        ])

        // Section 3: Mission
        ->setSection([
            'title'      => __('Section 3. Mission'),
            'desc'       => __('Mission'),
            'id'         => 'opt-mission',
            'subsection' => true,
            'icon'       => 'fa fa-images',
        ])
        ->setField([
            'id'         => 'opt-mission_section_id',
            'section_id' => 'opt-mission',
            'type'       => 'text',
            'label'      => __('Section Id'),
            'attributes' => [
                'name'    => 'opt-mission_section_id',
                'value'   => 'mission',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
            'helper'     => __('Sử dụng đặt vào cuối liên kết trong menu. <br> Ví dụ: https://domain.com/#section_id'),
        ])
        ->setField([
            'id'         => 'opt-mission-section_heading',
            'section_id' => 'opt-mission',
            'type'       => 'text',
            'label'      => __('Gallery Heading'),
            'attributes' => [
                'name'    => 'opt-mission-section_heading',
                'value'   => 'Mission',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter gallery title'),
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-mission-section_description',
            'section_id' => 'opt-mission',
            'type'       => 'editor',
            'label'      => __('Section Description'),
            'attributes' => [
                'name'    => 'opt-mission-section_description',
                'value'   => "XIN is not just a travel app — it’s a bridge that connects you with local communities and diverse cultures.
It creates millions of job opportunities for society. We help you earn profit from your journeys, expand your network, and enjoy rich and fulfilling travel experiences.",
                'options' => [
                    'class'        => 'form-control',
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-mission-section_image_left',
            'section_id' => 'opt-mission',
            'type'       => 'mediaImage',
            'label'      => __('Section Image Left'),
            'attributes' => [
                'name'    => 'opt-mission-section_image_left',
                'value'   => null,
            ],
        ])

        // Section 4. Value Delivered
        ->setSection([
            'title'      => __('Section 4. Value Delivered'),
            'desc'       => __('Value Delivered settings'),
            'id'         => 'opt-value-delivered',
            'subsection' => true,
            'icon'       => 'fa fa-chart-line',
        ])
        ->setField([
            'id'         => 'opt-value-delivered_section_id',
            'section_id' => 'opt-value-delivered',
            'type'       => 'text',
            'label'      => __('Section Id'),
            'attributes' => [
                'name'    => 'opt-value-delivered_section_id',
                'value'   => 'delivered',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
            'helper'     => __('Sử dụng đặt vào cuối liên kết trong menu. <br> Ví dụ: https://domain.com/#section_id'),
        ])
        ->setField([
            'id'         => 'opt-value-delivered_section_handing',
            'section_id' => 'opt-value-delivered',
            'type'       => 'text',
            'label'      => __('Section Title'),
            'attributes' => [
                'name'    => 'opt-value-delivered_section_handing',
                'value'   => 'Value Delivered',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-value-delivered_section_items',
            'section_id' => 'opt-value-delivered',
            'type'       => 'repeater',
            'label'      => __('Value Delivered - (Note: must be divisible by 2)'),
            'attributes' => [
                'name'   => 'opt-value-delivered_section_items',
                'value'  => null,
                'fields' => [
                    [
                        'type'       => 'mediaImage',
                        'label'      => __('Logo'),
                        'attributes' => [
                            'name'  => 'logo',
                            'value' => null,
                        ],
                    ],
                    [
                        'type'       => 'text',
                        'label'      => __('Description'),
                        'attributes' => [
                            'name'    => 'description',
                            'value'   => null,
                            'options' => [
                                'class'        => 'form-control',
                                'data-counter' => 120,
                            ],
                        ],
                    ],
                ],
            ],
        ])

        // Section 5. Why Choose XINTEL ?
        ->setSection([
            'title'      => __('Section 5. Why choose Xintel'),
            'desc'       => __('Section why choose settings'),
            'id'         => 'opt-why-choose',
            'subsection' => true,
            'icon'       => 'fa fa-handshake',
        ])
        ->setField([
            'id'         => 'opt-why-choose_section_id',
            'section_id' => 'opt-why-choose',
            'type'       => 'text',
            'label'      => __('Section Id'),
            'attributes' => [
                'name'    => 'opt-why-choose_section_id',
                'value'   => 'why-choose',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
            'helper'     => __('Sử dụng đặt vào cuối liên kết trong menu. <br> Ví dụ: https://domain.com/#section_id'),
        ])
        ->setField([
            'id'         => 'opt-why-choose_section_handing',
            'section_id' => 'opt-why-choose',
            'type'       => 'text',
            'label'      => __('Section Title'),
            'attributes' => [
                'name'    => 'opt-why-choose_section_handing',
                'value'   => 'Why Choose XINTEL ?',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-why-choose_col_1_item_1_fontawesome',
            'section_id' => 'opt-why-choose',
            'type'       => 'text',
            'label'      => __('Col 1 Item 1: Fontawesome'),
            'attributes' => [
                'name'    => 'opt-why-choose_col_1_item_1_fontawesome',
                'value'   => 'fas fa-bullseye',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-why-choose_col_1_item_1_icon',
            'section_id' => 'opt-why-choose',
            'type'       => 'mediaImage',
            'label'      => __('Col 1 Item 1: Icon'),
            'attributes' => [
                'name'    => 'opt-why-choose_col_1_item_1_icon',
                'value'   => null,
                'options' => [
                    'class'        => 'form-control',
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-why-choose_col_1_item_1_title',
            'section_id' => 'opt-why-choose',
            'type'       => 'text',
            'label'      => __('Col 1 Item 1: Title'),
            'attributes' => [
                'name'    => 'opt-why-choose_col_1_item_1_title',
                'value'   => 'Vission, Mission',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-why-choose_col_1_item_2_fontawesome',
            'section_id' => 'opt-why-choose',
            'type'       => 'text',
            'label'      => __('Col 1 Item 2: Fontawesome'),
            'attributes' => [
                'name'    => 'opt-why-choose_col_1_item_2_fontawesome',
                'value'   => 'fas fa-link',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-why-choose_col_1_item_2_icon',
            'section_id' => 'opt-why-choose',
            'type'       => 'mediaImage',
            'label'      => __('Col 1 Item 2: Icon'),
            'attributes' => [
                'name'    => 'opt-why-choose_col_1_item_2_icon',
                'value'   => null,
            ],
        ])
        ->setField([
            'id'         => 'opt-why-choose_col_1_item_2_title',
            'section_id' => 'opt-why-choose',
            'type'       => 'text',
            'label'      => __('Col 1 Item 2: Title'),
            'attributes' => [
                'name'    => 'opt-why-choose_col_1_item_2_title',
                'value'   => 'Transparent Legality',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-why-choose_col_2_item_1_fontawesome',
            'section_id' => 'opt-why-choose',
            'type'       => 'text',
            'label'      => __('Col 2 Item 1: Fontawesome'),
            'attributes' => [
                'name'    => 'opt-why-choose_col_2_item_1_fontawesome',
                'value'   => 'fas fa-chart-line',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-why-choose_col_2_item_1_icon',
            'section_id' => 'opt-why-choose',
            'type'       => 'mediaImage',
            'label'      => __('Col 2 Item 1: Icon'),
            'attributes' => [
                'name'    => 'opt-why-choose_col_2_item_1_icon',
                'value'   => null,
            ],
        ])
        ->setField([
            'id'         => 'opt-why-choose_col_2_item_1_title',
            'section_id' => 'opt-why-choose',
            'type'       => 'text',
            'label'      => __('Col 2 Item 1: Title'),
            'attributes' => [
                'name'    => 'opt-why-choose_col_2_item_1_title',
                'value'   => 'Deliver Real Value',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-why-choose_col_2_item_2_fontawesome',
            'section_id' => 'opt-why-choose',
            'type'       => 'text',
            'label'      => __('Col 2 Item 2: Fontawesome'),
            'attributes' => [
                'name'    => 'opt-why-choose_col_2_item_2_fontawesome',
                'value'   => 'fas fa-users',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-why-choose_col_2_item_2_icon',
            'section_id' => 'opt-why-choose',
            'type'       => 'mediaImage',
            'label'      => __('Col 2 Item 2: Icon'),
            'attributes' => [
                'name'    => 'opt-why-choose_col_2_item_2_icon',
                'value'   => null,
            ],
        ])
        ->setField([
            'id'         => 'opt-why-choose_col_2_item_2_title',
            'section_id' => 'opt-why-choose',
            'type'       => 'text',
            'label'      => __('Col 2 Item 2: Title'),
            'attributes' => [
                'name'    => 'opt-why-choose_col_2_item_2_title',
                'value'   => 'Quality Products',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-why-choose_col_3_item_1_fontawesome',
            'section_id' => 'opt-why-choose',
            'type'       => 'text',
            'label'      => __('Col 3 Item 1: Fontawesome'),
            'attributes' => [
                'name'    => 'opt-why-choose_col_3_item_1_fontawesome',
                'value'   => 'fas fa-balance-scale',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-why-choose_col_3_item_1_icon',
            'section_id' => 'opt-why-choose',
            'type'       => 'mediaImage',
            'label'      => __('Col 3 Item 1: Icon'),
            'attributes' => [
                'name'    => 'opt-why-choose_col_3_item_1_icon',
                'value'   => null,
            ],
        ])
        ->setField([
            'id'         => 'opt-why-choose_col_3_item_1_title',
            'section_id' => 'opt-why-choose',
            'type'       => 'text',
            'label'      => __('Col 3 Item 1: Title'),
            'attributes' => [
                'name'    => 'opt-why-choose_col_3_item_1_title',
                'value'   => 'Return On Investment (ROI)',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-why-choose_col_3_item_2_fontawesome',
            'section_id' => 'opt-why-choose',
            'type'       => 'text',
            'label'      => __('Col 3 Item 2: Fontawesome'),
            'attributes' => [
                'name'    => 'opt-why-choose_col_3_item_2_fontawesome',
                'value'   => 'fas fa-cube',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-why-choose_col_3_item_2_icon',
            'section_id' => 'opt-why-choose',
            'type'       => 'mediaImage',
            'label'      => __('Col 3 Item 2: Icon'),
            'attributes' => [
                'name'    => 'opt-why-choose_col_3_item_2_icon',
                'value'   => null,
            ],
        ])
        ->setField([
            'id'         => 'opt-why-choose_col_3_item_2_title',
            'section_id' => 'opt-why-choose',
            'type'       => 'text',
            'label'      => __('Col 3 Item 2: Title'),
            'attributes' => [
                'name'    => 'opt-why-choose_col_3_item_2_title',
                'value'   => 'Clear Plans and Strategies',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-why-choose_col_4_item_1_fontawesome',
            'section_id' => 'opt-why-choose',
            'type'       => 'text',
            'label'      => __('Col 4 Item 1: Fontawesome'),
            'attributes' => [
                'name'    => 'opt-why-choose_col_4_item_1_fontawesome',
                'value'   => 'fas fa-route',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-why-choose_col_4_item_1_icon',
            'section_id' => 'opt-why-choose',
            'type'       => 'mediaImage',
            'label'      => __('Col 4 Item 1: Icon'),
            'attributes' => [
                'name'    => 'opt-why-choose_col_4_item_1_icon',
                'value'   => null,
            ],
        ])
        ->setField([
            'id'         => 'opt-why-choose_col_4_item_1_title',
            'section_id' => 'opt-why-choose',
            'type'       => 'text',
            'label'      => __('Col 4 Item 1: Title'),
            'attributes' => [
                'name'    => 'opt-why-choose_col_4_item_1_title',
                'value'   => 'A Professional and Experienced Team',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-why-choose_col_4_item_2_fontawesome',
            'section_id' => 'opt-why-choose',
            'type'       => 'text',
            'label'      => __('Col 4 Item 2: Fontawesome'),
            'attributes' => [
                'name'    => 'opt-why-choose_col_4_item_2_fontawesome',
                'value'   => 'fas fa-coins',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-why-choose_col_4_item_2_icon',
            'section_id' => 'opt-why-choose',
            'type'       => 'mediaImage',
            'label'      => __('Col 4 Item 2: Icon'),
            'attributes' => [
                'name'    => 'opt-why-choose_col_4_item_2_icon',
                'value'   => null,
            ],
        ])
        ->setField([
            'id'         => 'opt-why-choose_col_4_item_2_title',
            'section_id' => 'opt-why-choose',
            'type'       => 'text',
            'label'      => __('Col 4 Item 2: Title'),
            'attributes' => [
                'name'    => 'opt-why-choose_col_4_item_2_title',
                'value'   => 'TOKENOMICS',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])


        // Section 6. Phase
        ->setSection([
            'title'      => __('Section 6. Phase'),
            'desc'       => __('Phase settings'),
            'id'         => 'opt-phase',
            'subsection' => true,
            'icon'       => 'fa fa-chart-line',
        ])
        ->setField([
            'id'         => 'opt-phase_section_id',
            'section_id' => 'opt-phase',
            'type'       => 'text',
            'label'      => __('Section Id'),
            'attributes' => [
                'name'    => 'opt-phase_section_id',
                'value'   => 'phase',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
            'helper'     => __('Sử dụng đặt vào cuối liên kết trong menu. <br> Ví dụ: https://domain.com/#section_id'),
        ])
        ->setField([
            'id'         => 'opt-phase_1_heading',
            'section_id' => 'opt-phase',
            'type'       => 'text',
            'label'      => __('Phase 1: Heading'),
            'attributes' => [
                'name'    => 'opt-phase_1_heading',
                'value'   => 'X-NFT & E-Sim',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-phase_1_sub_heading',
            'section_id' => 'opt-phase',
            'type'       => 'text',
            'label'      => __('Phase 1: Sub Heading'),
            'attributes' => [
                'name'    => 'opt-phase_1_sub_heading',
                'value'   => 'EXCLUSIVE LUCKY NUMBERS - BREAKTHROUGH CONNECTION',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-phase_1_description',
            'section_id' => 'opt-phase',
            'type'       => 'textarea',
            'label'      => __('Phase 1: Description'),
            'attributes' => [
                'name'    => 'opt-phase_1_description',
                'value'   => 'X-NFT offers exclusive lucky numbers, enabling your unique digital identity in the blockchain world. E-Sim elevates your experience to the next level, connecting you globally with cutting-edge technology.',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-phase_2_heading',
            'section_id' => 'opt-phase',
            'type'       => 'text',
            'label'      => __('Phase 2: Heading'),
            'attributes' => [
                'name'    => 'opt-phase_2_heading',
                'value'   => 'XINSTAR',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-phase_2_sub_heading',
            'section_id' => 'opt-phase',
            'type'       => 'text',
            'label'      => __('Phase 2: Sub Heading'),
            'attributes' => [
                'name'    => 'opt-phase_2_sub_heading',
                'value'   => 'SHORT VIDEO - LIVESTREAM - TRAVEL ENTERTAINMENT',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-phase_2_description',
            'section_id' => 'opt-phase',
            'type'       => 'textarea',
            'label'      => __('Phase 2: Description'),
            'attributes' => [
                'name'    => 'opt-phase_2_description',
                'value'   => 'Content creation. Media platform. Preserving local cultural values. Reviews: Places, food, travel, people... Sharing experiences.',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-phase_3_heading',
            'section_id' => 'opt-phase',
            'type'       => 'text',
            'label'      => __('Phase 3: Heading'),
            'attributes' => [
                'name'    => 'opt-phase_3_heading',
                'value'   => 'AI XINTOUR',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-phase_3_sub_heading',
            'section_id' => 'opt-phase',
            'type'       => 'text',
            'label'      => __('Phase 3: Sub Heading'),
            'attributes' => [
                'name'    => 'opt-phase_3_sub_heading',
                'value'   => 'AI XIN TOUR CHAT',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-phase_3_description',
            'section_id' => 'opt-phase',
            'type'       => 'textarea',
            'label'      => __('Phase 3: Description'),
            'attributes' => [
                'name'    => 'opt-phase_3_description',
                'value'   => 'No need for tour guides or rigid itineraries – AI XIN TOUR helps you design the optimal journey based on your preferences, weather, budget, and current status. Travel experiences are now intelligently "tailored" down to the finest detail.',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-phase_4_heading',
            'section_id' => 'opt-phase',
            'type'       => 'text',
            'label'      => __('Phase 4: Heading'),
            'attributes' => [
                'name'    => 'opt-phase_4_heading',
                'value'   => 'Kết nối E-Sim',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-phase_4_sub_heading',
            'section_id' => 'opt-phase',
            'type'       => 'text',
            'label'      => __('Phase 4: Sub Heading'),
            'attributes' => [
                'name'    => 'opt-phase_4_sub_heading',
                'value'   => '',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-phase_4_description',
            'section_id' => 'opt-phase',
            'type'       => 'textarea',
            'label'      => __('Phase 4: Description'),
            'attributes' => [
                'name'    => 'opt-phase_4_description',
                'value'   => 'E-SIM is transforming the way we connect to mobile networks, eliminating the need for physical SIM cards and enabling flexible, seamless roaming for users around the world.',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-phase_5_heading',
            'section_id' => 'opt-phase',
            'type'       => 'text',
            'label'      => __('Phase 5: Heading'),
            'attributes' => [
                'name'    => 'opt-phase_5_heading',
                'value'   => 'Meeting',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-phase_5_sub_heading',
            'section_id' => 'opt-phase',
            'type'       => 'text',
            'label'      => __('Phase 5: Sub Heading'),
            'attributes' => [
                'name'    => 'opt-phase_5_sub_heading',
                'value'   => '',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-phase_5_description',
            'section_id' => 'opt-phase',
            'type'       => 'textarea',
            'label'      => __('Phase 5: Description'),
            'attributes' => [
                'name'    => 'opt-phase_5_description',
                'value'   => 'Meetings are no longer a nightmare when supported by smart digital tools. From Zoom and Google Meet to AI-powered note-taking – all are designed for meetings that are fast, focused, and efficient.',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])

        // Section 7. Core Team Members
        ->setSection([
            'title'      => __('Section 7. Core Team Members'),
            'desc'       => __('Core Team Members settings'),
            'id'         => 'opt-core-team-members',
            'subsection' => true,
            'icon'       => 'fa fa-chart-line',
        ])
        ->setField([
            'id'         => 'opt-core-team-members_section_id',
            'section_id' => 'opt-core-team-members',
            'type'       => 'text',
            'label'      => __('Section Id'),
            'attributes' => [
                'name'    => 'opt-core-team-members_section_id',
                'value'   => 'core-team-members',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
            'helper'     => __('Sử dụng đặt vào cuối liên kết trong menu. <br> Ví dụ: https://domain.com/#section_id'),
        ])
        ->setField([
            'id'         => 'opt-core-team-members_section_handing',
            'section_id' => 'opt-core-team-members',
            'type'       => 'text',
            'label'      => __('Section Title'),
            'attributes' => [
                'name'    => 'opt-core-team-members_section_handing',
                'value'   => 'Core Team Members',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-core-team-members_section_items',
            'section_id' => 'opt-core-team-members',
            'type'       => 'repeater',
            'label'      => 'Nhân sự trong nước',
            'attributes' => [
                'name'   => 'opt-core-team-members_section_items',
                'value'  => null,
                'fields' => [
                    [
                        'type'       => 'mediaImage',
                        'label'      => __('Avatar'),
                        'attributes' => [
                            'name'  => 'avatar',
                            'value' => null,
                        ],
                    ],
                    [
                        'type'       => 'text',
                        'label'      => __('Name'),
                        'attributes' => [
                            'name'    => 'name',
                            'value'   => null,
                            'options' => [
                                'class'        => 'form-control',
                                'data-counter' => 120,
                            ],
                        ],
                    ],
                    [
                        'type'       => 'text',
                        'label'      => __('Title'),
                        'attributes' => [
                            'name'    => 'title',
                            'value'   => null,
                            'options' => [
                                'class'        => 'form-control',
                                'data-counter' => 120,
                            ],
                        ],
                    ],
                    [
                        'type'       => 'repeater',
                        'label'      => __('Social Links'),
                        'attributes' => [
                            'name'    => 'social_links',
                            'value'   => null,
                            'fields' => [
                                [
                                    'type'       => 'select',
                                    'label'      => __('Icon'),
                                    'attributes' => [
                                        'name'    => 'icon',
                                        'data' => [
                                            'none' => __('None'),
                                            'fa-brands fa-facebook-f' => __('Facebook'),
                                            'fa-solid fa-x' => __('X'),
                                            'fa-brands fa-linkedin-in' => __('Linkedin'),
                                        ],
                                        'value'   => null,
                                        'options' => [
                                            'class'        => 'form-control',
                                        ],
                                    ],
                                ],
                                [
                                    'type'       => 'text',
                                    'label'      => __('URL'),
                                    'attributes' => [
                                        'name'    => 'url',
                                        'value'   => null,
                                        'options' => [
                                            'class'        => 'form-control',
                                        ],
                                    ],
                                ],
                            ]
                        ],
                    ],
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-core-team-members_section_items_our_team',
            'section_id' => 'opt-core-team-members',
            'type'       => 'repeater',
            'label'      => 'Nhân sự nước ngoài',
            'attributes' => [
                'name'   => 'opt-core-team-members_section_items_our_team',
                'value'  => null,
                'fields' => [
                    [
                        'type'       => 'mediaImage',
                        'label'      => __('Avatar'),
                        'attributes' => [
                            'name'  => 'avatar',
                            'value' => null,
                        ],
                    ],
                    [
                        'type'       => 'text',
                        'label'      => __('Name'),
                        'attributes' => [
                            'name'    => 'name',
                            'value'   => null,
                            'options' => [
                                'class'        => 'form-control',
                                'data-counter' => 120,
                            ],
                        ],
                    ],
                    [
                        'type'       => 'text',
                        'label'      => __('Title'),
                        'attributes' => [
                            'name'    => 'title',
                            'value'   => null,
                            'options' => [
                                'class'        => 'form-control',
                                'data-counter' => 120,
                            ],
                        ],
                    ],
                    [
                        'type'       => 'repeater',
                        'label'      => __('Social Links'),
                        'attributes' => [
                            'name'    => 'social_links',
                            'value'   => null,
                            'fields' => [
                                [
                                    'type'       => 'select',
                                    'label'      => __('Icon'),
                                    'attributes' => [
                                        'name'    => 'icon',
                                        'data' => [
                                            'none' => __('None'),
                                            'fa-brands fa-facebook-f' => __('Facebook'),
                                            'fa-solid fa-x' => __('X'),
                                            'fa-brands fa-linkedin-in' => __('Linkedin'),
                                        ],
                                        'value'   => null,
                                        'options' => [
                                            'class'        => 'form-control',
                                        ],
                                    ],
                                ],
                                [
                                    'type'       => 'text',
                                    'label'      => __('URL'),
                                    'attributes' => [
                                        'name'    => 'url',
                                        'value'   => null,
                                        'options' => [
                                            'class'        => 'form-control',
                                        ],
                                    ],
                                ],
                            ]
                        ],
                    ],
                ],
            ],
        ])


        // Section 8. Experience
        ->setSection([
            'title'      => __('Section 8. Experience'),
            'desc'       => __('Experience settings'),
            'id'         => 'opt-experience',
            'subsection' => true,
            'icon'       => 'fa fa-chart-line',
        ])
        ->setField([
            'id'         => 'opt-experience_section_id',
            'section_id' => 'opt-experience',
            'type'       => 'text',
            'label'      => __('Section Id'),
            'attributes' => [
                'name'    => 'opt-experience_section_id',
                'value'   => 'experience',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
            'helper'     => __('Sử dụng đặt vào cuối liên kết trong menu. <br> Ví dụ: https://domain.com/#section_id'),
        ])
        ->setField([
            'id'         => 'opt-experience_section_handing',
            'section_id' => 'opt-experience',
            'type'       => 'text',
            'label'      => __('Heading'),
            'attributes' => [
                'name'    => 'opt-experience_section_handing',
                'value'   => 'Experience',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-experience_section_sub_handing',
            'section_id' => 'opt-experience',
            'type'       => 'text',
            'label'      => __('Sub Heading'),
            'attributes' => [
                'name'    => 'opt-experience_section_sub_handing',
                'value'   => 'XINSTAR TODAY',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-experience_section_button_heading',
            'section_id' => 'opt-experience',
            'type'       => 'text',
            'label'      => __('Button Heading'),
            'attributes' => [
                'name'    => 'opt-experience_section_button_heading',
                'value'   => 'Đến với XINSTAR',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-experience_section_button_url',
            'section_id' => 'opt-experience',
            'type'       => 'text',
            'label'      => __('Button Url'),
            'attributes' => [
                'name'    => 'opt-experience_section_button_url',
                'value'   => '',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])

        // Section 9. Product
        ->setSection([
            'title'      => __('Section 9. Products'),
            'desc'       => __('Products settings'),
            'id'         => 'opt-products',
            'subsection' => true,
            'icon'       => 'fa fa-chart-line',
        ])
        ->setField([
            'id'         => 'opt-products_section_id',
            'section_id' => 'opt-products',
            'type'       => 'text',
            'label'      => __('Section Id'),
            'attributes' => [
                'name'    => 'opt-products_section_id',
                'value'   => 'products',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
            'helper'     => __('Sử dụng đặt vào cuối liên kết trong menu. <br> Ví dụ: https://domain.com/#section_id'),
        ])
        ->setField([
            'id'         => 'opt-products_section_handing',
            'section_id' => 'opt-products',
            'type'       => 'text',
            'label'      => __('Section Title'),
            'attributes' => [
                'name'    => 'opt-products_section_handing',
                'value'   => 'Products',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-products_section_items',
            'section_id' => 'opt-products',
            'type'       => 'repeater',
            'label'      => 'List Items',
            'attributes' => [
                'name'   => 'opt-products_section_items',
                'value'  => null,
                'fields' => [
                    [
                        'type'       => 'mediaImage',
                        'label'      => __('Thumbnail'),
                        'attributes' => [
                            'name'  => 'thumbnail',
                            'value' => null,
                        ],
                    ],
                    [
                        'type'       => 'text',
                        'label'      => __('Name'),
                        'attributes' => [
                            'name'    => 'name',
                            'value'   => null,
                            'options' => [
                                'class'        => 'form-control',
                                'data-counter' => 120,
                            ],
                        ],
                    ],
                    [
                        'type'       => 'text',
                        'label'      => __('Title'),
                        'attributes' => [
                            'name'    => 'title',
                            'value'   => null,
                            'options' => [
                                'class'        => 'form-control',
                                'data-counter' => 120,
                            ],
                        ],
                    ],
                ],
            ],
        ])

        // Section 10. Support form
        ->setSection([
            'title'      => __('Section 10. Support form'),
            'desc'       => __('Support form settings'),
            'id'         => 'opt-support-form',
            'subsection' => true,
            'icon'       => 'fa fa-chart-line',
        ])
        ->setField([
            'id'         => 'opt-support-form_section_id',
            'section_id' => 'opt-support-form',
            'type'       => 'text',
            'label'      => __('Section Id'),
            'attributes' => [
                'name'    => 'opt-support-form_section_id',
                'value'   => 'support-form',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
            'helper'     => __('Sử dụng đặt vào cuối liên kết trong menu. <br> Ví dụ: https://domain.com/#section_id'),
        ])

        // Section 11. Roadmap
        ->setSection([
            'title'      => __('Section 11. Roadmap'),
            'desc'       => __('Roadmap settings'),
            'id'         => 'opt-roadmap',
            'subsection' => true,
            'icon'       => 'fa fa-chart-line',
        ])
        ->setField([
            'id'         => 'opt-roadmap_section_id',
            'section_id' => 'opt-roadmap',
            'type'       => 'text',
            'label'      => __('Section Id'),
            'attributes' => [
                'name'    => 'opt-roadmap_section_id',
                'value'   => 'roadmap',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
            'helper'     => __('Sử dụng đặt vào cuối liên kết trong menu. <br> Ví dụ: https://domain.com/#section_id'),
        ])
        ->setField([
            'id'         => 'opt-roadmap_section_handing',
            'section_id' => 'opt-roadmap',
            'type'       => 'text',
            'label'      => __('Section Title'),
            'attributes' => [
                'name'    => 'opt-roadmap_section_handing',
                'value'   => 'Roadmap',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-roadmap_row_1_item_1_title',
            'section_id' => 'opt-roadmap',
            'type'       => 'text',
            'label'      => __('Row 1 Roadmap 1: Title'),
            'attributes' => [
                'name'    => 'opt-roadmap_row_1_item_1_title',
                'value'   => '1st quarter - 2024',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-roadmap_row_1_item_1_description',
            'section_id' => 'opt-roadmap',
            'type'      => 'editor',
            'label'      => __('Row 1 Roadmap 1: Description'),
            'attributes' => [
                'name'  => 'opt-roadmap_row_1_item_1_description',
                'value' => null, // Default value
                'options' => [ // Optional
                    'class' => 'form-control theme-option-textarea',
                    'row' => '10',
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-roadmap_row_1_item_2_title',
            'section_id' => 'opt-roadmap',
            'type'       => 'text',
            'label'      => __('Row 1 Roadmap 2: Title'),
            'attributes' => [
                'name'    => 'opt-roadmap_row_1_item_2_title',
                'value'   => '2nd quarter - 2024',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-roadmap_row_1_item_2_description',
            'section_id' => 'opt-roadmap',
            'type'      => 'editor',
            'label'      => __('Row 1 Roadmap 2: Description'),
            'attributes' => [
                'name'  => 'opt-roadmap_row_1_item_2_description',
                'value' => null, // Default value
                'options' => [ // Optional
                    'class' => 'form-control theme-option-textarea',
                    'row' => '10',
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-roadmap_row_1_item_3_title',
            'section_id' => 'opt-roadmap',
            'type'       => 'text',
            'label'      => __('Row 1 Roadmap 3: Title'),
            'attributes' => [
                'name'    => 'opt-roadmap_row_1_item_3_title',
                'value'   => '3rd quarter - 2024',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-roadmap_row_1_item_3_description',
            'section_id' => 'opt-roadmap',
            'type'      => 'editor',
            'label'      => __('Row 1 Roadmap 3: Description'),
            'attributes' => [
                'name'  => 'opt-roadmap_row_1_item_3_description',
                'value' => null, // Default value
                'options' => [ // Optional
                    'class' => 'form-control theme-option-textarea',
                    'row' => '10',
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-roadmap_row_2_item_1_title',
            'section_id' => 'opt-roadmap',
            'type'       => 'text',
            'label'      => __('Row 2 Roadmap 1: Title'),
            'attributes' => [
                'name'    => 'opt-roadmap_row_2_item_1_title',
                'value'   => '1st quarter - 2025',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-roadmap_row_2_item_1_description',
            'section_id' => 'opt-roadmap',
            'type'      => 'editor',
            'label'      => __('Row 2 Roadmap 1: Description'),
            'attributes' => [
                'name'  => 'opt-roadmap_row_2_item_1_description',
                'value' => null, // Default value
                'options' => [ // Optional
                    'class' => 'form-control theme-option-textarea',
                    'row' => '10',
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-roadmap_row_2_item_2_title',
            'section_id' => 'opt-roadmap',
            'type'       => 'text',
            'label'      => __('Row 2 Roadmap 2: Title'),
            'attributes' => [
                'name'    => 'opt-roadmap_row_2_item_2_title',
                'value'   => '2nd quarter - 2025',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-roadmap_row_2_item_2_description',
            'section_id' => 'opt-roadmap',
            'type'      => 'editor',
            'label'      => __('Row 2 Roadmap 2: Description'),
            'attributes' => [
                'name'  => 'opt-roadmap_row_2_item_2_description',
                'value' => null, // Default value
                'options' => [ // Optional
                    'class' => 'form-control theme-option-textarea',
                    'row' => '10',
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-roadmap_row_2_item_3_title',
            'section_id' => 'opt-roadmap',
            'type'       => 'text',
            'label'      => __('Row 2 Roadmap 3: Title'),
            'attributes' => [
                'name'    => 'opt-roadmap_row_2_item_3_title',
                'value'   => '3rd quarter - 2025',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-roadmap_row_2_item_3_description',
            'section_id' => 'opt-roadmap',
            'type'      => 'editor',
            'label'      => __('Row 2 Roadmap 3: Description'),
            'attributes' => [
                'name'  => 'opt-roadmap_row_2_item_3_description',
                'value' => null, // Default value
                'options' => [ // Optional
                    'class' => 'form-control theme-option-textarea',
                    'row' => '10',
                ],
            ],
        ])

        // Section 12. Blog
        ->setSection([
            'title'      => __('Section 12. Blog'),
            'desc'       => __('Blog settings'),
            'id'         => 'opt-blog',
            'subsection' => true,
            'icon'       => 'fa fa-chart-line',
        ])
        ->setField([
            'id'         => 'opt-blog_section_id',
            'section_id' => 'opt-blog',
            'type'       => 'text',
            'label'      => __('Section Id'),
            'attributes' => [
                'name'    => 'opt-blog_section_id',
                'value'   => 'blog',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
            'helper'     => __('Sử dụng đặt vào cuối liên kết trong menu. <br> Ví dụ: https://domain.com/#section_id'),
        ])
        ->setField([
            'id'         => 'opt-blog_section_handing',
            'section_id' => 'opt-blog',
            'type'       => 'text',
            'label'      => __('Section Title'),
            'attributes' => [
                'name'    => 'opt-blog_section_handing',
                'value'   => 'Blog',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-blog_section_post_per_page',
            'section_id' => 'opt-blog',
            'type'       => 'text',
            'label'      => __('Post Per Page'),
            'attributes' => [
                'name'    => 'opt-blog_section_post_per_page',
                'value'   => 6,
                'options' => [
                    'class'        => 'form-control',
                ],
            ],
        ])

        // Section 13. Partners
        ->setSection([
            'title'      => __('Section 13. Partners'),
            'desc'       => __('Partners settings'),
            'id'         => 'opt-partners',
            'subsection' => true,
            'icon'       => 'fa fa-handshake',
        ])
        ->setField([
            'id'         => 'opt-partners_section_id',
            'section_id' => 'opt-partners',
            'type'       => 'text',
            'label'      => __('Section Id'),
            'attributes' => [
                'name'    => 'opt-partners_section_id',
                'value'   => 'partners',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
            'helper'     => __('Sử dụng đặt vào cuối liên kết trong menu. <br> Ví dụ: https://domain.com/#section_id'),
        ])
        ->setField([
            'id'         => 'opt-partners_section_mascot',
            'section_id' => 'opt-partners',
            'type'       => 'mediaImage',
            'label'      => __('Section Image Mascot'),
            'attributes' => [
                'name'    => 'opt-partners_section_mascot',
                'value'   => null,
            ],
        ])
        ->setField([
            'id'         => 'opt-partners_section_items',
            'section_id' => 'opt-partners',
            'type'       => 'repeater',
            'label'      => 'List Items',
            'attributes' => [
                'name'   => 'opt-partners_section_items',
                'value'  => null,
                'fields' => [
                    [
                        'type'       => 'mediaImage',
                        'label'      => __('Thumbnail'),
                        'attributes' => [
                            'name'  => 'thumbnail',
                            'value' => null,
                        ],
                    ],
                    [
                        'type'       => 'text',
                        'label'      => __('Title'),
                        'attributes' => [
                            'name'    => 'title',
                            'value'   => null,
                            'options' => [
                                'class'        => 'form-control',
                                'data-counter' => 120,
                            ],
                        ],
                    ],
                ],
            ],
        ])

        // Section 14. Faqs
        ->setSection([
            'title'      => __('Section 14. Faqs'),
            'desc'       => __('Faqs settings'),
            'id'         => 'opt-faqs',
            'subsection' => true,
            'icon'       => 'fa fa-chart-line',
        ])
        ->setField([
            'id'         => 'opt-faqs_section_id',
            'section_id' => 'opt-faqs',
            'type'       => 'text',
            'label'      => __('Section Id'),
            'attributes' => [
                'name'    => 'opt-faqs_section_id',
                'value'   => 'faq',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
            'helper'     => __('Sử dụng đặt vào cuối liên kết trong menu. <br> Ví dụ: https://domain.com/#section_id'),
        ])
        ->setField([
            'id'         => 'opt-faqs_section_handing',
            'section_id' => 'opt-faqs',
            'type'       => 'text',
            'label'      => __('Section Title'),
            'attributes' => [
                'name'    => 'opt-faqs_section_handing',
                'value'   => 'Faq',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-faqs_section_items',
            'section_id' => 'opt-faqs',
            'type'       => 'repeater',
            'label'      => 'List Items',
            'attributes' => [
                'name'   => 'opt-faqs_section_items',
                'value'  => null,
                'fields' => [
                    [
                        'type'       => 'text',
                        'label'      => __('Question'),
                        'attributes' => [
                            'name'    => 'question',
                            'value'   => null,
                            'options' => [
                                'class'        => 'form-control',
                            ],
                        ],
                    ],
                    [
                        'type'       => 'editor',
                        'label'      => __('Answer'),
                        'attributes' => [
                            'name'    => 'answer',
                            'value'   => null,
                            'options' => [
                                'class'        => 'form-control',
                            ],
                        ],
                    ],
                ],
            ],
        ])

        // Section 15. Contact form
        ->setSection([
            'title'      => __('Section 15. Contact form'),
            'desc'       => __('Contact settings'),
            'id'         => 'opt-contact',
            'subsection' => true,
            'icon'       => 'fa fa-chart-line',
        ])
        ->setField([
            'id'         => 'opt-contact_section_id',
            'section_id' => 'opt-contact',
            'type'       => 'text',
            'label'      => __('Section Id'),
            'attributes' => [
                'name'    => 'opt-contact_section_id',
                'value'   => 'contact',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
            'helper'     => __('Sử dụng đặt vào cuối liên kết trong menu. <br> Ví dụ: https://domain.com/#section_id'),
        ])
        ->setField([
            'id'         => 'opt-contact_section_handing',
            'section_id' => 'opt-contact',
            'type'       => 'text',
            'label'      => __('Section Title'),
            'attributes' => [
                'name'    => 'opt-contact_section_handing',
                'value'   => 'Contact us',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'opt-contact_section_address',
            'section_id' => 'opt-contact',
            'type'       => 'text',
            'label'      => __('Address'),
            'attributes' => [
                'name'    => 'opt-contact_section_address',
                'value'   => '',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Detail address'),
                ],
            ],
        ])

        // Footer Section
        ->setSection([
            'title'      => __('Section 16. Footer'),
            'desc'       => __('Footer settings for website'),
            'id'         => 'opt-text-subsection-footer',
            'subsection' => true,
            'icon'       => 'fa fa-window-minimize',
        ])
        ->setField([
            'id'         => 'footer_site_description',
            'section_id' => 'opt-text-subsection-footer',
            'type'       => 'textarea',
            'label'      => __('Footer site description'),
            'attributes' => [
                'name'    => 'footer_site_description',
                'value'   => '<b>XIN Ecosystem</b> <br> Explore the world and begin your transformation journey in a fairer and more convenient way with XIN.',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter Footer site description'),
                    'data-counter' => 1000,
                    'rows'         => 3,
                ],
            ],
        ])
        ->setField([
            'id'         => 'footer_contact_heading',
            'section_id' => 'opt-text-subsection-footer',
            'type'       => 'text',
            'label'      => __('Contact Heading'),
            'attributes' => [
                'name'    => 'footer_contact_heading',
                'value'   => 'Contact Us',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter contact heading'),
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'footer_contact_email',
            'section_id' => 'opt-text-subsection-footer',
            'type'       => 'email',
            'label'      => __('Contact Email'),
            'attributes' => [
                'name'    => 'footer_contact_email',
                'value'   => 'support@xintel.co',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter contact email'),
                    'data-counter' => 250,
                ],
            ],
        ])
        ;
});


register_page_template([
    'default' => 'Default',
]);

register_sidebar([
    'id'          => 'second_sidebar',
    'name'        => 'Second sidebar',
    'description' => 'This is a sample sidebar for xintel theme',
]);

RvMedia::setUploadPathAndURLToPublic();

app('events')->listen(RouteMatched::class, function () {
    ThemeSupport::registerSocialLinks();

    Menu::addMenuLocation('footer-menu', 'Footer menu');
    Menu::addMenuLocation('footer-menu-bottom', 'Footer menu bottom');
});
