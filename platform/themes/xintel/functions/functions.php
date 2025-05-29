<?php

use Botble\Media\Facades\RvMedia;

app()->booted(function () {
    theme_option()
        // Banner Section - #home
        ->setSection([
            'title'      => __('1. Hero Section'),
            'desc'       => __('Banner settings for website'),
            'id'         => 'opt-text-subsection-banner',
            'subsection' => true,
            'icon'       => 'fa fa-image',
        ])
        ->setField([
            'id'         => 'banner_heading',
            'section_id' => 'opt-text-subsection-banner',
            'type'       => 'text',
            'label'      => __('Banner Heading'),
            'attributes' => [
                'name'    => 'banner_heading',
                'value'   => 'What the XIN App Brings to You',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter banner heading'),
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'banner_text',
            'section_id' => 'opt-text-subsection-banner',
            'type'       => 'textarea',
            'label'      => __('Banner Text (Left)'),
            'attributes' => [
                'name'    => 'banner_text',
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
            'id'         => 'banner_text_two',
            'section_id' => 'opt-text-subsection-banner',
            'type'       => 'textarea',
            'label'      => __('Banner Text (Right)'),
            'attributes' => [
                'name'    => 'banner_text_two',
                'value'   => "XIN offers a powerful feature that enhances your overall travel experience and gives you a great opportunity to earn exciting rewards every second as you explore the world.",
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter right banner text'),
                    'data-counter' => 500,
                    'rows'         => 3,
                ],
            ],
        ])
        ->setField([
            'id'         => 'banner_image',
            'section_id' => 'opt-text-subsection-banner',
            'type'       => 'mediaImage',
            'label'      => __('Banner Background'),
            'attributes' => [
                'name'    => 'banner_image',
                'value'   => null,
            ],
        ])

        // Gallery Section (About Section 2)
        ->setSection([
            'title'      => __('2. Section Product'),
            'desc'       => __('Gallery settings for website'),
            'id'         => 'opt-text-subsection-gallery',
            'subsection' => true,
            'icon'       => 'fa fa-images',
        ])
        ->setField([
            'id'         => 'gallery_heading',
            'section_id' => 'opt-text-subsection-gallery',
            'type'       => 'text',
            'label'      => __('Gallery Heading'),
            'attributes' => [
                'name'    => 'gallery_heading',
                'value'   => 'WHAT IS XIN?',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter gallery title'),
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'gallery_sub_heading',
            'section_id' => 'opt-text-subsection-gallery',
            'type'       => 'text',
            'label'      => __('Gallery Sub Heading'),
            'attributes' => [
                'name'    => 'gallery_sub_heading',
                'value'   => "XIN is more than just a travel platform – it’s a space to share emotions, images, videos, and vibrant exploration experiences. Here, you don’t just inspire the community – you earn rewards every second as you connect and interact with the world.",
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter gallery sub title'),
                    'data-counter' => 500,
                ],
            ],
        ])
        ->setField([
            'id'         => 'gallery_1_image',
            'section_id' => 'opt-text-subsection-gallery',
            'type'       => 'mediaImage',
            'label'      => __('Gallery 1 Image'),
            'attributes' => [
                'name'    => 'gallery_1_image',
                'value'   => null,
            ],
        ])
        ->setField([
            'id'         => 'gallery_1_title',
            'section_id' => 'opt-text-subsection-gallery',
            'type'       => 'text',
            'label'      => __('Gallery 1 Title'),
            'attributes' => [
                'name'    => 'gallery_1_title',
                'value'   => 'Transaction Fees',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter gallery title'),
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'gallery_1_content',
            'section_id' => 'opt-text-subsection-gallery',
            'type'       => 'textarea',
            'label'      => __('Gallery 1 Content'),
            'attributes' => [
                'name'    => 'gallery_1_content',
                'value'   => "From the exchange of services, products, and financial interactions between users, merchants, and businesses within the ecosystem.",
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter gallery content'),
                    'data-counter' => 500,
                    'rows'         => 3,
                ],
            ],
        ])
        ->setField([
            'id'         => 'gallery_2_image',
            'section_id' => 'opt-text-subsection-gallery',
            'type'       => 'mediaImage',
            'label'      => __('Gallery 2 Image'),
            'attributes' => [
                'name'    => 'gallery_2_image',
                'value'   => null,
            ],
        ])
        ->setField([
            'id'         => 'gallery_2_title',
            'section_id' => 'opt-text-subsection-gallery',
            'type'       => 'text',
            'label'      => __('Gallery 2 Title'),
            'attributes' => [
                'name'    => 'gallery_2_title',
                'value'   => 'In app Purchases',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter gallery title'),
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'gallery_2_content',
            'section_id' => 'opt-text-subsection-gallery',
            'type'       => 'textarea',
            'label'      => __('Gallery 2 Content'),
            'attributes' => [
                'name'    => 'gallery_2_content',
                'value'   => "Users pay to access premium utilities such as games, featured content display, shopping, and digital events.",
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter gallery content'),
                    'data-counter' => 500,
                    'rows'         => 3,
                ],
            ],
        ])
        ->setField([
            'id'         => 'gallery_3_image',
            'section_id' => 'opt-text-subsection-gallery',
            'type'       => 'mediaImage',
            'label'      => __('Gallery 3 Image'),
            'attributes' => [
                'name'    => 'gallery_3_image',
                'value'   => null,
            ],
        ])
        ->setField([
            'id'         => 'gallery_3_title',
            'section_id' => 'opt-text-subsection-gallery',
            'type'       => 'text',
            'label'      => __('Gallery 3 Title'),
            'attributes' => [
                'name'    => 'gallery_3_title',
                'value'   => 'Subscription & Membership',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter gallery title'),
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'gallery_3_content',
            'section_id' => 'opt-text-subsection-gallery',
            'type'       => 'textarea',
            'label'      => __('Gallery 3 Content'),
            'attributes' => [
                'name'    => 'gallery_3_content',
                'value'   => "Enhanced membership packages offer extended access, travel and financial benefits, and exclusive community privileges.",
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter gallery content'),
                    'data-counter' => 500,
                    'rows'         => 3,
                ],
            ],
        ])
        ->setField([
            'id'         => 'gallery_4_image',
            'section_id' => 'opt-text-subsection-gallery',
            'type'       => 'mediaImage',
            'label'      => __('Gallery 4 Image'),
            'attributes' => [
                'name'    => 'gallery_4_image',
                'value'   => null,
            ],
        ])
        ->setField([
            'id'         => 'gallery_4_title',
            'section_id' => 'opt-text-subsection-gallery',
            'type'       => 'text',
            'label'      => __('Gallery 4 Title'),
            'attributes' => [
                'name'    => 'gallery_4_title',
                'value'   => 'Commercial Partnerships & OTT Marketplace',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter gallery title'),
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'gallery_4_content',
            'section_id' => 'opt-text-subsection-gallery',
            'type'       => 'textarea',
            'label'      => __('Gallery 4 Content'),
            'attributes' => [
                'name'    => 'gallery_4_content',
                'value'   => "Businesses pay to set up storefronts, promote offerings, or integrate XIN payment within their platforms.",
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter gallery content'),
                    'data-counter' => 500,
                    'rows'         => 3,
                ],
            ],
        ])
        ->setField([
            'id'         => 'gallery_5_image',
            'section_id' => 'opt-text-subsection-gallery',
            'type'       => 'mediaImage',
            'label'      => __('Gallery 5 Image'),
            'attributes' => [
                'name'    => 'gallery_5_image',
                'value'   => null,
            ],
        ])
        ->setField([
            'id'         => 'gallery_5_title',
            'section_id' => 'opt-text-subsection-gallery',
            'type'       => 'text',
            'label'      => __('Gallery 5 Title'),
            'attributes' => [
                'name'    => 'gallery_5_title',
                'value'   => 'Payments via XIN Token',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter gallery title'),
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'gallery_5_content',
            'section_id' => 'opt-text-subsection-gallery',
            'type'       => 'textarea',
            'label'      => __('Gallery 5 Content'),
            'attributes' => [
                'name'    => 'gallery_5_content',
                'value'   => "Used for all services — tours, game items, OTT, and storefronts — seamlessly and securely.",
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter gallery content'),
                    'data-counter' => 500,
                    'rows'         => 3,
                ],
            ],
        ])
        ->setField([
            'id'         => 'gallery_6_image',
            'section_id' => 'opt-text-subsection-gallery',
            'type'       => 'mediaImage',
            'label'      => __('Gallery 6 Image'),
            'attributes' => [
                'name'    => 'gallery_6_image',
                'value'   => null,
            ],
        ])
        ->setField([
            'id'         => 'gallery_6_title',
            'section_id' => 'opt-text-subsection-gallery',
            'type'       => 'text',
            'label'      => __('Gallery 6 Title'),
            'attributes' => [
                'name'    => 'gallery_6_title',
                'value'   => 'Staking XIN Token',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter gallery title'),
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'gallery_6_content',
            'section_id' => 'opt-text-subsection-gallery',
            'type'       => 'textarea',
            'label'      => __('Gallery 6 Content'),
            'attributes' => [
                'name'    => 'gallery_6_content',
                'value'   => "Earn periodic rewards, unlock premium content, and participate in community governance.",
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter gallery content'),
                    'data-counter' => 500,
                    'rows'         => 3,
                ],
            ],
        ])

        // Growth Mechanism Section
        ->setSection([
            'title'      => __('3. Section Development Mechanism'),
            'desc'       => __('Growth Mechanism section settings'),
            'id'         => 'opt-text-subsection-growth-mechanism',
            'subsection' => true,
            'icon'       => 'fa fa-chart-line',
        ])
        ->setField([
            'id'         => 'growth_background_image',
            'section_id' => 'opt-text-subsection-growth-mechanism',
            'type'       => 'mediaImage',
            'label'      => __('Background Image'),
            'attributes' => [
                'name'  => 'growth_background_image',
                'value' => null,
            ],
        ])
        ->setField([
            'id'         => 'growth_title',
            'section_id' => 'opt-text-subsection-growth-mechanism',
            'type'       => 'text',
            'label'      => __('Section Title'),
            'attributes' => [
                'name'    => 'growth_title',
                'value'   => 'Growth Mechanism',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'growth_description',
            'section_id' => 'opt-text-subsection-growth-mechanism',
            'type'       => 'text',
            'label'      => __('Section Description'),
            'attributes' => [
                'name'    => 'growth_description',
                'value'   => "XIN is a platform that combines three core pillars: Travel & Earn, Social FI, and a Payment Gateway — making travel easier, fostering community connections, and enabling secure blockchain-based payments.",
                'options' => [
                    'class'        => 'form-control',
                    'rows'         => 4,
                ],
            ],
        ])
        // Mission Block
        ->setField([
            'id'         => 'growth_mission_title',
            'section_id' => 'opt-text-subsection-growth-mechanism',
            'type'       => 'text',
            'label'      => __('Mission Title'),
            'attributes' => [
                'name'    => 'growth_mission_title',
                'value'   => 'Mission',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'growth_mission_description',
            'section_id' => 'opt-text-subsection-growth-mechanism',
            'type'       => 'textarea',
            'label'      => __('Mission Description'),
            'attributes' => [
                'name'    => 'growth_mission_description',
                'value'   => "To help users earn while traveling, connect global communities, and simplify international payments on a secure platform.",
                'options' => [
                    'class' => 'form-control',
                    'rows'  => 3,
                ],
            ],
        ])
        ->setField([
            'id'         => 'growth_mission_image',
            'section_id' => 'opt-text-subsection-growth-mechanism',
            'type'       => 'mediaImage',
            'label'      => __('Mission Image'),
            'attributes' => [
                'name'  => 'growth_mission_image',
                'value' => null,
            ],
        ])

        // Goal Block
        ->setField([
            'id'         => 'growth_goal_title',
            'section_id' => 'opt-text-subsection-growth-mechanism',
            'type'       => 'text',
            'label'      => __('Goal Title'),
            'attributes' => [
                'name'    => 'growth_goal_title',
                'value'   => 'Goal',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'growth_goal_description',
            'section_id' => 'opt-text-subsection-growth-mechanism',
            'type'       => 'textarea',
            'label'      => __('Goal Description'),
            'attributes' => [
                'name'    => 'growth_goal_description',
                'value'   => "By 2028, XIN aims to connect millions of travelers, promote cultural exchange, and become a globally influential travel platform.",
                'options' => [
                    'class' => 'form-control',
                    'rows'  => 3,
                ],
            ],
        ])
        ->setField([
            'id'         => 'growth_goal_image',
            'section_id' => 'opt-text-subsection-growth-mechanism',
            'type'       => 'mediaImage',
            'label'      => __('Goal Image'),
            'attributes' => [
                'name'  => 'growth_goal_image',
                'value' => null,
            ],
        ])

        // Vision Block
        ->setField([
            'id'         => 'growth_vision_title',
            'section_id' => 'opt-text-subsection-growth-mechanism',
            'type'       => 'text',
            'label'      => __('Vision Title'),
            'attributes' => [
                'name'    => 'growth_vision_title',
                'value'   => 'Vision',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'growth_vision_description',
            'section_id' => 'opt-text-subsection-growth-mechanism',
            'type'       => 'textarea',
            'label'      => __('Vision Description'),
            'attributes' => [
                'name'    => 'growth_vision_description',
                'value'   => "To become the leading platform where travel is not just an experience, but a chance to create value — with flexible services tailored to every user’s needs.",
                'options' => [
                    'class' => 'form-control',
                    'rows'  => 3,
                ],
            ],
        ])
        ->setField([
            'id'         => 'growth_vision_image',
            'section_id' => 'opt-text-subsection-growth-mechanism',
            'type'       => 'mediaImage',
            'label'      => __('Vision Image'),
            'attributes' => [
                'name'  => 'growth_vision_image',
                'value' => null,
            ],
        ])

        // Ecosystem Section
        ->setSection([
            'title'      => __('4. Section Ecosystem'),
            'desc'       => __('Ecosystem section settings'),
            'id'         => 'opt-text-subsection-ecosystem',
            'subsection' => true,
            'icon'       => 'fa fa-sitemap',
        ])
        ->setField([
            'id'         => 'ecosystem_section_heading',
            'section_id' => 'opt-text-subsection-ecosystem',
            'type'       => 'text',
            'label'      => __('Section Heading'),
            'attributes' => [
                'name'    => 'ecosystem_section_heading',
                'value'   => 'XIN Ecosystem',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'ecosystem_section_description',
            'section_id' => 'opt-text-subsection-ecosystem',
            'type'       => 'text',
            'label'      => __('Section Description'),
            'attributes' => [
                'name'    => 'ecosystem_section_description',
                'value'   => "XIN is a comprehensive ecosystem where every member not only connects but also grows sustainably within a secure, innovative digital network deeply rooted in local cultural identity.",
                'options' => [
                    'class' => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        // Sub Section 1
        ->setField([
            'id'         => 'ecosystem_sub_section_1_pin_icon',
            'section_id' => 'opt-text-subsection-ecosystem',
            'type'       => 'mediaImage',
            'label'      => __('Sub Section 1 Pin Icon'),
            'attributes' => [
                'name'  => 'ecosystem_sub_section_1_pin_icon',
                'value' => null,
            ],
        ])
        ->setField([
            'id'         => 'ecosystem_sub_section_1_heading',
            'section_id' => 'opt-text-subsection-ecosystem',
            'type'       => 'text',
            'label'      => __('Sub Section 1 Heading'),
            'attributes' => [
                'name'    => 'ecosystem_sub_section_1_heading',
                'value'   => 'Strong Community Connection',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'ecosystem_sub_section_1_content',
            'section_id' => 'opt-text-subsection-ecosystem',
            'type'       => 'text',
            'label'      => __('Sub Section 1 Content'),
            'attributes' => [
                'name'    => 'ecosystem_sub_section_1_content',
                'value'   => "From <b>XIN-Tel</b> – a global connectivity platform, to <b>XIN-Travel</b> – a space for preserving and promoting local culture, we build community hubs. With <b>XIN-Star</b>, users tell the stories of their regions through video, preserving experiences with technology.",
                'options' => [
                    'class' => 'form-control',
                    'rows'  => 4,
                ],
            ],
        ])
        // Sub Section 2
        ->setField([
            'id'         => 'ecosystem_sub_section_2_pin_icon',
            'section_id' => 'opt-text-subsection-ecosystem',
            'type'       => 'mediaImage',
            'label'      => __('Sub Section 2 Pin Icon'),
            'attributes' => [
                'name'  => 'ecosystem_sub_section_2_pin_icon',
                'value' => null,
            ],
        ])
        ->setField([
            'id'         => 'ecosystem_sub_section_2_heading',
            'section_id' => 'opt-text-subsection-ecosystem',
            'type'       => 'text',
            'label'      => __('Sub Section 2 Heading'),
            'attributes' => [
                'name'    => 'ecosystem_sub_section_2_heading',
                'value'   => 'Earning Profits',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'ecosystem_sub_section_2_content',
            'section_id' => 'opt-text-subsection-ecosystem',
            'type'       => 'text',
            'label'      => __('Sub Section 2 Content'),
            'attributes' => [
                'name'    => 'ecosystem_sub_section_2_content',
                'value'   => "<b>XIN-Shop</b> supports local businesses in launching online stores and engaging in peer-to-peer commerce. <b>XIN-Game</b> offers an entertainment space where players can interact, co-create, and earn income from their content.",
                'options' => [
                    'class' => 'form-control',
                    'rows'  => 4,
                ],
            ],
        ])
        // Sub Section 3
        ->setField([
            'id'         => 'ecosystem_sub_section_3_pin_icon',
            'section_id' => 'opt-text-subsection-ecosystem',
            'type'       => 'mediaImage',
            'label'      => __('Sub Section 3 Pin Icon'),
            'attributes' => [
                'name'  => 'ecosystem_sub_section_3_pin_icon',
                'value' => null,
            ],
        ])
        ->setField([
            'id'         => 'ecosystem_sub_section_3_heading',
            'section_id' => 'opt-text-subsection-ecosystem',
            'type'       => 'text',
            'label'      => __('Sub Section 3 Heading'),
            'attributes' => [
                'name'    => 'ecosystem_sub_section_3_heading',
                'value'   => 'Safe Payments',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'ecosystem_sub_section_3_content',
            'section_id' => 'opt-text-subsection-ecosystem',
            'type'       => 'text',
            'label'      => __('Sub Section 3 Content'),
            'attributes' => [
                'name'    => 'ecosystem_sub_section_3_content',
                'value'   => "<b>XIN-Fintech</b> ensures safe transactions, covering everything from payments to savings and credit. Powered by the <b>XIN token</b> system, users worldwide are connected through a transparent and trustworthy digital financial platform.",
                'options' => [
                    'class' => 'form-control',
                    'rows'  => 4,
                ],
            ],
        ])

        // About Section - #about
        ->setSection([
            'title'      => __('5.Section Demand'),
            'desc'       => __('About section settings for website'),
            'id'         => 'opt-text-subsection-services',
            'subsection' => true,
            'icon'       => 'fa fa-cogs',
        ])
        ->setField([
            'id'         => 'services_heading',
            'section_id' => 'opt-text-subsection-services',
            'type'       => 'text',
            'label'      => __('About Heading'),
            'attributes' => [
                'name'    => 'services_heading',
                'value'   => 'Why Choose XIN?',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter services heading'),
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'services_sub_heading',
            'section_id' => 'opt-text-subsection-services',
            'type'       => 'text',
            'label'      => __('About Heading'),
            'attributes' => [
                'name'    => 'services_sub_heading',
                'value'   => 'XIN needs to exist because it addresses key challenges in the travel industry and bridges the gap between tourism businesses and blockchain technology. Here are a few reasons why XIN is essential:',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter services sub heading'),
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'service_1_content',
            'section_id' => 'opt-text-subsection-services',
            'type'       => 'textarea',
            'label'      => __('About Block 1 Content'),
            'attributes' => [
                'name'    => 'service_1_content',
                'value'   => '<b>Cost Optimization & Global Payments</b> <br> XIN leverages blockchain to reduce transaction fees and enable fast, transparent international payments.',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter service block 1 content'),
                    'data-counter' => 500,
                    'rows'         => 3,
                ],
            ],
        ])
        ->setField([
            'id'         => 'service_1_icon',
            'section_id' => 'opt-text-subsection-services',
            'type'       => 'mediaImage',
            'label'      => __('About Block 1 Icon'),
            'attributes' => [
                'name'    => 'service_1_icon',
                'value'   => null,
            ],
        ])
        ->setField([
            'id'         => 'service_2_content',
            'section_id' => 'opt-text-subsection-services',
            'type'       => 'textarea',
            'label'      => __('About Block 2 Content'),
            'attributes' => [
                'name'    => 'service_2_content',
                'value'   => '<b>Community Connection & Sharing</b><br> It creates opportunities for meaningful connections between travelers and locals, while sharing tourism generated value with the community.',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter service block 2 content'),
                    'data-counter' => 500,
                    'rows'         => 3,
                ],
            ],
        ])
        ->setField([
            'id'         => 'service_2_icon',
            'section_id' => 'opt-text-subsection-services',
            'type'       => 'mediaImage',
            'label'      => __('About Block 2 Icon'),
            'attributes' => [
                'name'    => 'service_2_icon',
                'value'   => null,
            ],
        ])
        ->setField([
            'id'         => 'service_3_content',
            'section_id' => 'opt-text-subsection-services',
            'type'       => 'textarea',
            'label'      => __('About Block 3 Content'),
            'attributes' => [
                'name'    => 'service_3_content',
                'value'   => '<b>Transparency & Trust</b> <br>Blockchain technology reveals the true value of services, fostering trust between users and providers.',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter service block 3 content'),
                    'data-counter' => 500,
                    'rows'         => 3,
                ],
            ],
        ])
        ->setField([
            'id'         => 'service_3_icon',
            'section_id' => 'opt-text-subsection-services',
            'type'       => 'mediaImage',
            'label'      => __('About Block 3 Icon'),
            'attributes' => [
                'name'    => 'service_3_icon',
                'value'   => null,
            ],
        ])
        ->setField([
            'id'         => 'service_4_content',
            'section_id' => 'opt-text-subsection-services',
            'type'       => 'textarea',
            'label'      => __('About Block 4 Content'),
            'attributes' => [
                'name'    => 'service_4_content',
                'value'   => '<b>Innovative & Engaging Technology</b> <br>NFTs and a reward system make travel more exciting, personalized, and memorable.',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter service block 4 content'),
                    'data-counter' => 500,
                    'rows'         => 3,
                ],
            ],
        ])
        ->setField([
            'id'         => 'service_4_icon',
            'section_id' => 'opt-text-subsection-services',
            'type'       => 'mediaImage',
            'label'      => __('Service Block 4 Icon'),
            'attributes' => [
                'name'    => 'service_4_icon',
                'value'   => null,
            ],
        ])

        // Tokenomics & Utility Section
        ->setSection([
            'title'      => __('6. Section Tokenomics & Utility'),
            'desc'       => __('Tokenomics & Utility section settings'),
            'id'         => 'opt-text-subsection-tokenomics',
            'subsection' => true,
            'icon'       => 'fa fa-coins',
        ])
        ->setField([
            'id'         => 'tokenomics_main_heading',
            'section_id' => 'opt-text-subsection-tokenomics',
            'type'       => 'text',
            'label'      => __('Main Heading'),
            'attributes' => [
                'name'    => 'tokenomics_main_heading',
                'value'   => 'Tokenomics & Utility',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'tokenomics_sub_heading',
            'section_id' => 'opt-text-subsection-tokenomics',
            'type'       => 'text',
            'label'      => __('Sub Heading'),
            'attributes' => [
                'name'    => 'tokenomics_sub_heading',
                'value'   => '250% Mining Distribution - No Private Sale:',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'tokenomics_description',
            'section_id' => 'opt-text-subsection-tokenomics',
            'type'       => 'textarea',
            'label'      => __('Description'),
            'attributes' => [
                'name'    => 'tokenomics_description',
                'value'   => 'The XIN Token is distributed entirely through a transparent mining mechanism — <b>with no pre-sale and no allocations for funds or the team</b>. This forms the foundation for building a fair, open, and sustainable ecosystem.',
                'options' => [
                    'class' => 'form-control',
                    'rows'  => 3,
                ],
            ],
        ])
        ->setField([
            'id'         => 'tokenomics_image',
            'section_id' => 'opt-text-subsection-tokenomics',
            'type'       => 'mediaImage',
            'label'      => __('Tokenomics Chart Image'),
            'attributes' => [
                'name'  => 'tokenomics_image',
                'value' => null,
            ],
        ])
        ->setField([
            'id'         => 'tokenomics_mining_volume',
            'section_id' => 'opt-text-subsection-tokenomics',
            'type'       => 'text',
            'label'      => __('Mining Volume'),
            'attributes' => [
                'name'    => 'tokenomics_mining_volume',
                'value'   => '121,995,104 / 12,000,000,000',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        // Utility Card 1
        ->setField([
            'id'         => 'tokenomics_utility_1_icon',
            'section_id' => 'opt-text-subsection-tokenomics',
            'type'       => 'mediaImage',
            'label'      => __('Utility 1 Icon'),
            'attributes' => [
                'name'  => 'tokenomics_utility_1_icon',
                'value' => null,
            ],
        ])
        ->setField([
            'id'         => 'tokenomics_utility_1_title',
            'section_id' => 'opt-text-subsection-tokenomics',
            'type'       => 'text',
            'label'      => __('Utility 1 Title'),
            'attributes' => [
                'name'    => 'tokenomics_utility_1_title',
                'value'   => 'Smart Contract',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'tokenomics_utility_1_link',
            'section_id' => 'opt-text-subsection-tokenomics',
            'type'       => 'text',
            'label'      => __('Utility 1 Link'),
            'attributes' => [
                'name'    => 'tokenomics_utility_1_link',
                'value'   => '#',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 255,
                ],
            ],
        ])
        // Utility Card 2
        ->setField([
            'id'         => 'tokenomics_utility_2_icon',
            'section_id' => 'opt-text-subsection-tokenomics',
            'type'       => 'mediaImage',
            'label'      => __('Utility 2 Icon'),
            'attributes' => [
                'name'  => 'tokenomics_utility_2_icon',
                'value' => null,
            ],
        ])
        ->setField([
            'id'         => 'tokenomics_utility_2_title',
            'section_id' => 'opt-text-subsection-tokenomics',
            'type'       => 'text',
            'label'      => __('Utility 2 Title'),
            'attributes' => [
                'name'    => 'tokenomics_utility_2_title',
                'value'   => 'Token Audit',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'tokenomics_utility_2_link',
            'section_id' => 'opt-text-subsection-tokenomics',
            'type'       => 'text',
            'label'      => __('Utility 2 Link'),
            'attributes' => [
                'name'    => 'tokenomics_utility_2_link',
                'value'   => '#',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 255,
                ],
            ],
        ])
        // Utility Card 3
        ->setField([
            'id'         => 'tokenomics_utility_3_icon',
            'section_id' => 'opt-text-subsection-tokenomics',
            'type'       => 'mediaImage',
            'label'      => __('Utility 3 Icon'),
            'attributes' => [
                'name'  => 'tokenomics_utility_3_icon',
                'value' => null,
            ],
        ])
        ->setField([
            'id'         => 'tokenomics_utility_3_title',
            'section_id' => 'opt-text-subsection-tokenomics',
            'type'       => 'text',
            'label'      => __('Utility 3 Title'),
            'attributes' => [
                'name'    => 'tokenomics_utility_3_title',
                'value'   => 'P2P Exchange',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'tokenomics_utility_3_link',
            'section_id' => 'opt-text-subsection-tokenomics',
            'type'       => 'text',
            'label'      => __('Utility 3 Link'),
            'attributes' => [
                'name'    => 'tokenomics_utility_3_link',
                'value'   => '#',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 255,
                ],
            ],
        ])
        // Utility Card 4
        ->setField([
            'id'         => 'tokenomics_utility_4_icon',
            'section_id' => 'opt-text-subsection-tokenomics',
            'type'       => 'mediaImage',
            'label'      => __('Utility 4 Icon'),
            'attributes' => [
                'name'  => 'tokenomics_utility_4_icon',
                'value' => null,
            ],
        ])
        ->setField([
            'id'         => 'tokenomics_utility_4_title',
            'section_id' => 'opt-text-subsection-tokenomics',
            'type'       => 'text',
            'label'      => __('Utility 4 Title'),
            'attributes' => [
                'name'    => 'tokenomics_utility_4_title',
                'value'   => 'CEX',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        // Utility Card 5
        ->setField([
            'id'         => 'tokenomics_utility_5_icon',
            'section_id' => 'opt-text-subsection-tokenomics',
            'type'       => 'mediaImage',
            'label'      => __('Utility 5 Icon'),
            'attributes' => [
                'name'  => 'tokenomics_utility_5_icon',
                'value' => null,
            ],
        ])
        ->setField([
            'id'         => 'tokenomics_utility_5_title',
            'section_id' => 'opt-text-subsection-tokenomics',
            'type'       => 'text',
            'label'      => __('Utility 5 Title'),
            'attributes' => [
                'name'    => 'tokenomics_utility_5_title',
                'value'   => 'DEX',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])

        // Team Section - #team
        ->setSection([
            'title'      => __('7. Section Team Member'),
            'desc'       => __('Team members settings for website'),
            'id'         => 'opt-text-subsection-team',
            'subsection' => true,
            'icon'       => 'fa fa-users',
        ])
        ->setField([
            'id'         => 'team_heading',
            'section_id' => 'opt-text-subsection-team',
            'type'       => 'text',
            'label'      => __('Team Heading'),
            'attributes' => [
                'name'    => 'team_heading',
                'value'   => 'Core Team',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter team heading'),
                    'data-counter' => 250,
                ],
            ],
        ])
        // ->setField([
        //     'id'         => 'team_sub_heading',
        //     'section_id' => 'opt-text-subsection-team',
        //     'type'       => 'text',
        //     'label'      => __('Team Sub Heading'),
        //     'attributes' => [
        //         'name'    => 'team_sub_heading',
        //         'value'   => 'XIN is not just an idea it is a project supported by leading names in Web3, marketing, and technology',
        //         'options' => [
        //             'class'        => 'form-control',
        //             'placeholder'  => __('Enter team sub heading'),
        //             'data-counter' => 250,
        //         ],
        //     ],
        // ])
        ->setField([
            'id'         => 'team_1_image',
            'section_id' => 'opt-text-subsection-team',
            'type'       => 'mediaImage',
            'label'      => __('Team Member 1 Image'),
            'attributes' => [
                'name'    => 'team_1_image',
                'value'   => null,
            ],
        ])
        ->setField([
            'id'         => 'team_1_name',
            'section_id' => 'opt-text-subsection-team',
            'type'       => 'text',
            'label'      => __('Team Member 1 Name'),
            'attributes' => [
                'name'    => 'team_1_name',
                'value'   => 'AlexTurner',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter team member name'),
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'team_1_position',
            'section_id' => 'opt-text-subsection-team',
            'type'       => 'text',
            'label'      => __('Team Member 1 Position'),
            'attributes' => [
                'name'    => 'team_1_position',
                'value'   => 'CEO',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter team member position'),
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'team_1_number',
            'section_id' => 'opt-text-subsection-team',
            'type'       => 'text',
            'label'      => __('Team Member 1 Number'),
            'attributes' => [
                'name'    => 'team_1_number',
                'value'   => '01',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter team member number'),
                    'data-counter' => 10,
                ],
            ],
        ])
        ->setField([
            'id'         => 'team_1_bio',
            'section_id' => 'opt-text-subsection-team',
            'type'       => 'textarea',
            'label'      => __('Team Member 1 Bio'),
            'attributes' => [
                'name'    => 'team_1_bio',
                'value'   => 'Innovation is at the heart of what I do. With XINTEL, I am committed to building a comprehensive social ecosystem that shapes the future of decentralized finance.',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter team member bio'),
                    'data-counter' => 1000,
                    'rows'         => 5,
                ],
            ],
        ])
        ->setField([
            'id'         => 'team_2_image',
            'section_id' => 'opt-text-subsection-team',
            'type'       => 'mediaImage',
            'label'      => __('Team Member 2 Image'),
            'attributes' => [
                'name'    => 'team_2_image',
                'value'   => null,
            ],
        ])
        ->setField([
            'id'         => 'team_2_name',
            'section_id' => 'opt-text-subsection-team',
            'type'       => 'text',
            'label'      => __('Team Member 2 Name'),
            'attributes' => [
                'name'    => 'team_2_name',
                'value'   => 'Kent Baktas',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter team member name'),
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'team_2_position',
            'section_id' => 'opt-text-subsection-team',
            'type'       => 'text',
            'label'      => __('Team Member 2 Position'),
            'attributes' => [
                'name'    => 'team_2_position',
                'value'   => 'CTO',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter team member position'),
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'team_2_number',
            'section_id' => 'opt-text-subsection-team',
            'type'       => 'text',
            'label'      => __('Team Member 2 Number'),
            'attributes' => [
                'name'    => 'team_2_number',
                'value'   => '02',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter team member number'),
                    'data-counter' => 10,
                ],
            ],
        ])
        ->setField([
            'id'         => 'team_2_bio',
            'section_id' => 'opt-text-subsection-team',
            'type'       => 'textarea',
            'label'      => __('Team Member 2 Bio'),
            'attributes' => [
                'name'    => 'team_2_bio',
                'value'   => 'I believe that technology must always
evolve. With XIN, we provide sustainable
and innovative blockchain solutions.',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter team member bio'),
                    'data-counter' => 1000,
                    'rows'         => 5,
                ],
            ],
        ])
        ->setField([
            'id'         => 'team_3_image',
            'section_id' => 'opt-text-subsection-team',
            'type'       => 'mediaImage',
            'label'      => __('Team Member 3 Image'),
            'attributes' => [
                'name'    => 'team_3_image',
                'value'   => null,
            ],
        ])
        ->setField([
            'id'         => 'team_3_name',
            'section_id' => 'opt-text-subsection-team',
            'type'       => 'text',
            'label'      => __('Team Member 3 Name'),
            'attributes' => [
                'name'    => 'team_3_name',
                'value'   => 'Dusan Zica',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter team member name'),
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'team_3_position',
            'section_id' => 'opt-text-subsection-team',
            'type'       => 'text',
            'label'      => __('Team Member 3 Position'),
            'attributes' => [
                'name'    => 'team_3_position',
                'value'   => 'CMO',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter team member position'),
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'team_3_number',
            'section_id' => 'opt-text-subsection-team',
            'type'       => 'text',
            'label'      => __('Team Member 3 Number'),
            'attributes' => [
                'name'    => 'team_3_number',
                'value'   => '03',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter team member number'),
                    'data-counter' => 10,
                ],
            ],
        ])
        ->setField([
            'id'         => 'team_3_bio',
            'section_id' => 'opt-text-subsection-team',
            'type'       => 'textarea',
            'label'      => __('Team Member 3 Bio'),
            'attributes' => [
                'name'    => 'team_3_bio',
                'value'   => "I don't just tell stories, I build worlds. XIN is where the community comes together to shape the future of Web3.",
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter team member bio'),
                    'data-counter' => 1000,
                    'rows'         => 5,
                ],
            ],
        ])
        // Partner Section - #partner
        ->setSection([
            'title'      => __('8. Testimonials | Partners | Backers'),
            'desc'       => __('Partner settings for website'),
            'id'         => 'opt-text-subsection-partner',
            'subsection' => true,
            'icon'       => 'fa fa-users',
        ])
        ->setField([
            'id'         => 'partner_heading8',
            'section_id' => 'opt-text-subsection-partner',
            'type'       => 'text',
            'label'      => __('Partner Heading'),
            'attributes' => [
                'name'    => 'partner_heading8',
                'value'   => 'Working Alongside Trusted Partners',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter partner heading'),
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'partner_sub_heading8',
            'section_id' => 'opt-text-subsection-partner',
            'type'       => 'textarea',
            'label'      => __('Partner Sub Heading'),
            'attributes' => [
                'name'    => 'partner_sub_heading8',
                'value'   => "XIN is not just an idea – it is a project supported by leading names in Web3, marketing, and technology:",
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter partner sub heading'),
                    'data-counter' => 1000,
                    'rows'         => 5,
                ],
            ],
        ])
        ->setField([
            'id'         => 'partner_1_image',
            'section_id' => 'opt-text-subsection-partner',
            'type'       => 'mediaImage',
            'label'      => __('Partner 1 Image'),
            'attributes' => [
                'name'    => 'partner_1_image',
                'value'   => null,
            ],
        ])
        ->setField([
            'id'         => 'partner_1_name',
            'section_id' => 'opt-text-subsection-partner',
            'type'       => 'text',
            'label'      => __('Partner 1 Name'),
            'attributes' => [
                'name'    => 'partner_1_name',
                'value'   => '[Partner Web3 Name]',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter partner name'),
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'partner_1_position',
            'section_id' => 'opt-text-subsection-partner',
            'type'       => 'text',
            'label'      => __('Partner 1 Position'),
            'attributes' => [
                'name'    => 'partner_1_position',
                'value'   => 'Blockchain integration & smart contract security',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter partner position'),
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'partner_2_image',
            'section_id' => 'opt-text-subsection-partner',
            'type'       => 'mediaImage',
            'label'      => __('Partner 2 Image'),
            'attributes' => [
                'name'    => 'partner_2_image',
                'value'   => null,
            ],
        ])
        ->setField([
            'id'         => 'partner_2_name',
            'section_id' => 'opt-text-subsection-partner',
            'type'       => 'text',
            'label'      => __('Partner 2 Name'),
            'attributes' => [
                'name'    => 'partner_2_name',
                'value'   => '[Marketing Agency Name]',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter partner name'),
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'partner_2_position',
            'section_id' => 'opt-text-subsection-partner',
            'type'       => 'text',
            'label'      => __('Partner 2 Position'),
            'attributes' => [
                'name'    => 'partner_2_position',
                'value'   => 'Go to market strategy for Southeast Asia and the global market.',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter partner position'),
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'partner_3_image',
            'section_id' => 'opt-text-subsection-partner',
            'type'       => 'mediaImage',
            'label'      => __('Partner 3 Image'),
            'attributes' => [
                'name'    => 'partner_3_image',
                'value'   => null,
            ],
        ])
        ->setField([
            'id'         => 'partner_3_name',
            'section_id' => 'opt-text-subsection-partner',
            'type'       => 'text',
            'label'      => __('Partner 3 Name'),
            'attributes' => [
                'name'    => 'partner_3_name',
                'value'   => '[Tech Partner Name]',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter partner name'),
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'partner_3_position',
            'section_id' => 'opt-text-subsection-partner',
            'type'       => 'text',
            'label'      => __('Partner 3 Position'),
            'attributes' => [
                'name'    => 'partner_3_position',
                'value'   => 'Technical infrastructure & cross platform expansion.',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter partner position'),
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'partner_quote',
            'section_id' => 'opt-text-subsection-partner',
            'type'       => 'text',
            'label'      => __('Partner Quote'),
            'attributes' => [
                'name'    => 'partner_quote',
                'value'   => '“XIN represents a unique approach, connecting content, travel, and a transparent tokenomics model. This is a model we believe will explode in Web3.” — <b>[VC/Investor Name]</b>, General Partner – <b>[Fund Name]</b>.',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter partner quote'),
                    'data-counter' => 250,
                ],
            ],
        ])


        // Journey Section - #journey
        ->setSection([
            'title'      => __('9. Section Roadmap'),
            'desc'       => __('Journey/Roadmap settings for website'),
            'id'         => 'opt-text-subsection-journey',
            'subsection' => true,
            'icon'       => 'fa fa-road',
        ])
        ->setField([
            'id'         => 'journey_heading',
            'section_id' => 'opt-text-subsection-journey',
            'type'       => 'text',
            'label'      => __('Journey Heading'),
            'attributes' => [
                'name'    => 'journey_heading',
                'value'   => 'Roadmap',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter journey heading'),
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'journey_1_title',
            'section_id' => 'opt-text-subsection-journey',
            'type'       => 'text',
            'label'      => __('Journey 1 Title'),
            'attributes' => [
                'name'    => 'journey_1_title',
                'value'   => 'Q4, 2024',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter journey title'),
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'journey_1_content',
            'section_id' => 'opt-text-subsection-journey',
            'type'       => 'textarea',
            'label'      => __('Journey 1 Content'),
            'attributes' => [
                'name'    => 'journey_1_content',
                'value'   => "<ul>
                                        <li>Launch eSIM and data packages for XIN: Expand country and region options.</li>
                                        <li>Introduce travel guide feature and tour booking setup.</li>
                                        <li>Activate check-in reward feature within the app.</li>
                                        <li>Set up for 20-30 countries.</li>
                                        <li>Connect with 250 brands and 5,000 local partners.</li>
                                        <li>Connect Xintel with 6 countries: Thailand, Singapore, Malaysia, Indonesia, Philippines, and South Korea.</li>
                                        <li>Organize XIN app and travel experience event in Thailand.</li>
                                        <li>Goal: 250,000 users for Q4.</li>
                                    </ul>",
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter journey content'),
                    'data-counter' => 1000,
                    'rows'         => 6,
                ],
            ],
        ])
        ->setField([
            'id'         => 'journey_2_title',
            'section_id' => 'opt-text-subsection-journey',
            'type'       => 'text',
            'label'      => __('Journey 2 Title'),
            'attributes' => [
                'name'    => 'journey_2_title',
                'value'   => 'Q1, 2025',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter journey title'),
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'journey_2_content',
            'section_id' => 'opt-text-subsection-journey',
            'type'       => 'textarea',
            'label'      => __('Journey 2 Content'),
            'attributes' => [
                'name'    => 'journey_2_content',
                'value'   => "<ul>
                                        <li>Integrate multi platform payment gateway and international payments.</li>
                                        <li>Integrate booking for global trips, restaurants, hotels, and cafes.</li>
                                        <li>Deploy KOLs for live streaming within the app.</li>
                                        <li>Set up for 20-30 countries.</li>
                                        <li>Connect with 200 brands and 10,000 local partners.</li>
                                        <li>Connect Xintel with 6 countries.</li>
                                        <li>Organize XIN app and travel experience event in Singapore.</li>
                                        <li>Goal: 500,000 users for Q1.</li>
                                    </ul>",
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter journey content'),
                    'data-counter' => 1000,
                    'rows'         => 6,
                ],
            ],
        ])
        ->setField([
            'id'         => 'journey_3_title',
            'section_id' => 'opt-text-subsection-journey',
            'type'       => 'text',
            'label'      => __('Journey 3 Title'),
            'attributes' => [
                'name'    => 'journey_3_title',
                'value'   => 'Q2, 2025',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter journey title'),
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'journey_3_content',
            'section_id' => 'opt-text-subsection-journey',
            'type'       => 'textarea',
            'label'      => __('Journey 3 Content'),
            'attributes' => [
                'name'    => 'journey_3_content',
                'value'   => "<ul>
                                        <li>Launch GameFi Hub: Support blockchain games and related activities.</li>
                                        <li>Set up for 20-30 countries.</li>
                                        <li>Connect with 300 brands and 15,000 local partners.</li>
                                        <li>Connect Xintel with 6 countries.</li>
                                        <li>Organize XIN app and travel experience event in Indonesia.</li>
                                        <li>Goal: 1 million users for Q2.</li>
                                    </ul>",
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter journey content'),
                    'data-counter' => 1000,
                    'rows'         => 6,
                ],
            ],
        ])
        ->setField([
            'id'         => 'journey_4_title',
            'section_id' => 'opt-text-subsection-journey',
            'type'       => 'text',
            'label'      => __('Journey 4 Title'),
            'attributes' => [
                'name'    => 'journey_4_title',
                'value'   => 'Q3, 2025',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter journey title'),
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'journey_4_content',
            'section_id' => 'opt-text-subsection-journey',
            'type'       => 'textarea',
            'label'      => __('Journey 4 Content'),
            'attributes' => [
                'name'    => 'journey_4_content',
                'value'   => "<ul>
                                        <li>Launch Only Fan feature.</li>
                                        <li>List XIN token on DEX and CEX exchanges.</li>
                                        <li>Set up for 20-30 countries.</li>
                                        <li>Connect with 400 brands and 20,000 local partners.</li>
                                        <li>Connect Xintel with 6 countries.</li>
                                        <li>Organize XIN app and travel experience event in Indonesia.</li>
                                        <li>Goal: 2 million users for Q3.</li>
                                    </ul>",
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter journey content'),
                    'data-counter' => 1000,
                    'rows'         => 6,
                ],
            ],
        ])
        ->setField([
            'id'         => 'journey_5_title',
            'section_id' => 'opt-text-subsection-journey',
            'type'       => 'text',
            'label'      => __('Journey 5 Title'),
            'attributes' => [
                'name'    => 'journey_5_title',
                'value'   => 'Q4, 2025',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter journey title'),
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'journey_5_content',
            'section_id' => 'opt-text-subsection-journey',
            'type'       => 'textarea',
            'label'      => __('Journey 5 Content'),
            'attributes' => [
                'name'    => 'journey_5_content',
                'value'   => "<ul>
                                        <li>Launch Gateway Payment: Support international transactions and multi-platform services.</li>
                                        <li>Release XIN chain and applications.</li>
                                        <li>Set up for 20-30 countries.</li>
                                        <li>Connect with 500 brands and 25,000 local partners.</li>
                                        <li>Connect Xintel with 6 countries.</li>
                                        <li>Organize XIN app and travel experience event in South Korea.</li>
                                        <li>Goal: 3 million users for Q4.</li>
                                    </ul>",
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter journey content'),
                    'data-counter' => 1000,
                    'rows'         => 6,
                ],
            ],
        ])

        // Investor Documentation Section
        ->setSection([
            'title'      => __('10. Section Document'),
            'desc'       => __('Investor Documentation section settings'),
            'id'         => 'opt-text-subsection-investor-docs',
            'subsection' => true,
            'icon'       => 'fa fa-file-contract',
        ])
        ->setField([
            'id'         => 'investor_docs_title',
            'section_id' => 'opt-text-subsection-investor-docs',
            'type'       => 'text',
            'label'      => __('Section Title'),
            'attributes' => [
                'name'    => 'investor_docs_title',
                'value'   => 'Investor Documentation',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'investor_docs_description',
            'section_id' => 'opt-text-subsection-investor-docs',
            'type'       => 'textarea',
            'label'      => __('Section Description'),
            'attributes' => [
                'name'    => 'investor_docs_description',
                'value'   => 'We are committed to delivering a transparent, robust ecosystem that is ready for global expansion. All information for investors is thoroughly prepared, clear, and verifiable.',
                'options' => [
                    'class' => 'form-control',
                    'rows'  => 3,
                ],
            ],
        ])
        // Document 1

        ->setField([
            'id'         => 'investor_docs_item_1_title',
            'section_id' => 'opt-text-subsection-investor-docs',
            'type'       => 'text',
            'label'      => __('Document 1 Title'),
            'attributes' => [
                'name'    => 'investor_docs_item_1_title',
                'value'   => 'Pitch Deck',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'investor_docs_item_1_description',
            'section_id' => 'opt-text-subsection-investor-docs',
            'type'       => 'text',
            'label'      => __('Document 1 Description'),
            'attributes' => [
                'name'    => 'investor_docs_item_1_description',
                'value'   => 'Project Overview, Operational Model, and Growth Potential.',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 255,
                ],
            ],
        ])
        ->setField([
            'id'         => 'investor_docs_item_1_button_text',
            'section_id' => 'opt-text-subsection-investor-docs',
            'type'       => 'text',
            'label'      => __('Document 1 button text'),
            'attributes' => [
                'name'    => 'investor_docs_item_1_button_text',
                'value'   => 'Download PDF',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 50,
                ],
            ],
        ])
        ->setField([
            'id'         => 'investor_docs_item_1_link',
            'section_id' => 'opt-text-subsection-investor-docs',
            'type'       => 'text',
            'label'      => __('Document 1 Link'),
            'attributes' => [
                'name'    => 'investor_docs_item_1_link',
                'value'   => '#',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 255,
                ],
            ],
        ])
        // Document 2
        ->setField([
            'id'         => 'investor_docs_item_2_title',
            'section_id' => 'opt-text-subsection-investor-docs',
            'type'       => 'text',
            'label'      => __('Document 2 Title'),
            'attributes' => [
                'name'    => 'investor_docs_item_2_title',
                'value'   => 'Whitepaper',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'investor_docs_item_2_description',
            'section_id' => 'opt-text-subsection-investor-docs',
            'type'       => 'text',
            'label'      => __('Document 2 Description'),
            'attributes' => [
                'name'    => 'investor_docs_item_2_description',
                'value'   => 'Product Architecture, Roadmap, and Detailed Development Logic.',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 255,
                ],
            ],
        ])
        ->setField([
            'id'         => 'investor_docs_item_2_button_text',
            'section_id' => 'opt-text-subsection-investor-docs',
            'type'       => 'text',
            'label'      => __('Document 2 button text'),
            'attributes' => [
                'name'    => 'investor_docs_item_2_button_text',
                'value'   => 'Read now',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 50,
                ],
            ],
        ])
        ->setField([
            'id'         => 'investor_docs_item_2_link',
            'section_id' => 'opt-text-subsection-investor-docs',
            'type'       => 'text',
            'label'      => __('Document 2 Link'),
            'attributes' => [
                'name'    => 'investor_docs_item_2_link',
                'value'   => '#',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 255,
                ],
            ],
        ])

        // Document 3
        ->setField([
            'id'         => 'investor_docs_item_3_title',
            'section_id' => 'opt-text-subsection-investor-docs',
            'type'       => 'text',
            'label'      => __('Document 3 Title'),
            'attributes' => [
                'name'    => 'investor_docs_item_3_title',
                'value'   => 'Audit Report',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'investor_docs_item_3_description',
            'section_id' => 'opt-text-subsection-investor-docs',
            'type'       => 'text',
            'label'      => __('Document 3 Description'),
            'attributes' => [
                'name'    => 'investor_docs_item_3_description',
                'value'   => 'Smart contract security audited by a third party.',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 255,
                ],
            ],
        ])
        ->setField([
            'id'         => 'investor_docs_item_3_button_text',
            'section_id' => 'opt-text-subsection-investor-docs',
            'type'       => 'text',
            'label'      => __('Document 3 button text'),
            'attributes' => [
                'name'    => 'investor_docs_item_3_button_text',
                'value'   => 'Details',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 50,
                ],
            ],
        ])
        ->setField([
            'id'         => 'investor_docs_item_3_link',
            'section_id' => 'opt-text-subsection-investor-docs',
            'type'       => 'text',
            'label'      => __('Document 3 Link'),
            'attributes' => [
                'name'    => 'investor_docs_item_3_link',
                'value'   => '#',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 255,
                ],
            ],
        ])
        // Document 4
        ->setField([
            'id'         => 'investor_docs_item_4_title',
            'section_id' => 'opt-text-subsection-investor-docs',
            'type'       => 'text',
            'label'      => __('Document 4 Title'),
            'attributes' => [
                'name'    => 'investor_docs_item_4_title',
                'value'   => 'Tokenomics details',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'investor_docs_item_4_description',
            'section_id' => 'opt-text-subsection-investor-docs',
            'type'       => 'text',
            'label'      => __('Document 4 Description'),
            'attributes' => [
                'name'    => 'investor_docs_item_4_description',
                'value'   => 'Distribution Mechanism, Utility, and Token Value Maintenance Strategy.',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 255,
                ],
            ],
        ])
        ->setField([
            'id'         => 'investor_docs_item_4_button_text',
            'section_id' => 'opt-text-subsection-investor-docs',
            'type'       => 'text',
            'label'      => __('Document 4 button text'),
            'attributes' => [
                'name'    => 'investor_docs_item_4_button_text',
                'value'   => 'Explore more',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 50,
                ],
            ],
        ])
        ->setField([
            'id'         => 'investor_docs_item_4_link',
            'section_id' => 'opt-text-subsection-investor-docs',
            'type'       => 'text',
            'label'      => __('Document 4 Link'),
            'attributes' => [
                'name'    => 'investor_docs_item_4_link',
                'value'   => '#',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 255,
                ],
            ],
        ])
        // Document 5
        ->setField([
            'id'         => 'investor_docs_item_5_title',
            'section_id' => 'opt-text-subsection-investor-docs',
            'type'       => 'text',
            'label'      => __('Document 5 Title'),
            'attributes' => [
                'name'    => 'investor_docs_item_5_title',
                'value'   => 'Call with Founders / Investor Team.',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'investor_docs_item_5_description',
            'section_id' => 'opt-text-subsection-investor-docs',
            'type'       => 'text',
            'label'      => __('Document 5 Description'),
            'attributes' => [
                'name'    => 'investor_docs_item_5_description',
                'value'   => '',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 255,
                ],
            ],
        ])
        ->setField([
            'id'         => 'investor_docs_item_5_button_text',
            'section_id' => 'opt-text-subsection-investor-docs',
            'type'       => 'text',
            'label'      => __('Document 5 button text'),
            'attributes' => [
                'name'    => 'investor_docs_item_5_button_text',
                'value'   => 'Book now',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 50,
                ],
            ],
        ])
        ->setField([
            'id'         => 'investor_docs_item_5_link',
            'section_id' => 'opt-text-subsection-investor-docs',
            'type'       => 'text',
            'label'      => __('Document 5 Link'),
            'attributes' => [
                'name'    => 'investor_docs_item_5_link',
                'value'   => '#',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 255,
                ],
            ],
        ])

        // Stats Section
        ->setSection([
            'title'      => __('11. Section Xin In Action'),
            'desc'       => __('Statistics and download settings for website'),
            'id'         => 'opt-text-subsection-stats',
            'subsection' => true,
            'icon'       => 'fa fa-chart-bar',
        ])
        ->setField([
            'id'         => 'stats_heading',
            'section_id' => 'opt-text-subsection-stats',
            'type'       => 'text',
            'label'      => __('Stats Heading'),
            'attributes' => [
                'name'    => 'stats_heading',
                'value'   => 'Real Data',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter stats heading'),
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'stats_sub_heading',
            'section_id' => 'opt-text-subsection-stats',
            'type'       => 'text',
            'label'      => __('Stats Sub Heading'),
            'attributes' => [
                'name'    => 'stats_sub_heading',
                'value'   => "The project is not just an idea – XIN is growing stronger every day with a global community of users who engage, share, and earn rewards.",
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter stats sub heading'),
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id'         => 'stats_counter_1_number',
            'section_id' => 'opt-text-subsection-stats',
            'type'       => 'text',
            'label'      => __('Counter 1 Number'),
            'attributes' => [
                'name'    => 'stats_counter_1_number',
                'value'   => '1245000',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter counter number'),
                    'data-counter' => 10,
                ],
            ],
        ])
        ->setField([
            'id'         => 'stats_counter_1_label',
            'section_id' => 'opt-text-subsection-stats',
            'type'       => 'text',
            'label'      => __('Counter 1 Label'),
            'attributes' => [
                'name'    => 'stats_counter_1_label',
                'value'   => 'Registered Users',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter counter label'),
                    'data-counter' => 50,
                ],
            ],
        ])
        ->setField([
            'id'         => 'stats_counter_2_number',
            'section_id' => 'opt-text-subsection-stats',
            'type'       => 'text',
            'label'      => __('Counter 2 Number'),
            'attributes' => [
                'name'    => 'stats_counter_2_number',
                'value'   => '25',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter counter number'),
                    'data-counter' => 10,
                ],
            ],
        ])
        ->setField([
            'id'         => 'stats_counter_2_label',
            'section_id' => 'opt-text-subsection-stats',
            'type'       => 'text',
            'label'      => __('Counter 2 Label'),
            'attributes' => [
                'name'    => 'stats_counter_2_label',
                'value'   => 'App Downloads',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter counter label'),
                    'data-counter' => 50,
                ],
            ],
        ])
        ->setField([
            'id'         => 'stats_counter_3_number',
            'section_id' => 'opt-text-subsection-stats',
            'type'       => 'text',
            'label'      => __('Counter 3 Number'),
            'attributes' => [
                'name'    => 'stats_counter_3_number',
                'value'   => '210000',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter counter number'),
                    'data-counter' => 10,
                ],
            ],
        ])
        ->setField([
            'id'         => 'stats_counter_3_label',
            'section_id' => 'opt-text-subsection-stats',
            'type'       => 'text',
            'label'      => __('Counter 3 Label'),
            'attributes' => [
                'name'    => 'stats_counter_3_label',
                'value'   => 'Monthly Active Users (MAU)',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter counter label'),
                    'data-counter' => 50,
                ],
            ],
        ])
        ->setField([
            'id'         => 'stats_counter_4_number',
            'section_id' => 'opt-text-subsection-stats',
            'type'       => 'text',
            'label'      => __('Counter 4 Number'),
            'attributes' => [
                'name'    => 'stats_counter_4_number',
                'value'   => '92400000',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter counter number'),
                    'data-counter' => 10,
                ],
            ],
        ])
        ->setField([
            'id'         => 'stats_counter_4_label',
            'section_id' => 'opt-text-subsection-stats',
            'type'       => 'text',
            'label'      => __('Counter 4 Label'),
            'attributes' => [
                'name'    => 'stats_counter_4_label',
                'value'   => 'XIN Token has been mined',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter counter label'),
                    'data-counter' => 50,
                ],
            ],
        ])
        ->setField([
            'id'         => 'stats_counter_5_number',
            'section_id' => 'opt-text-subsection-stats',
            'type'       => 'text',
            'label'      => __('Counter 5 Number'),
            'attributes' => [
                'name'    => 'stats_counter_5_number',
                'value'   => '30',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter counter number'),
                    'data-counter' => 10,
                ],
            ],
        ])
        ->setField([
            'id'         => 'stats_counter_5_label',
            'section_id' => 'opt-text-subsection-stats',
            'type'       => 'text',
            'label'      => __('Counter 5 Label'),
            'attributes' => [
                'name'    => 'stats_counter_5_label',
                'value'   => 'Countries Currently Using',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter counter label'),
                    'data-counter' => 50,
                ],
            ],
        ])
        ->setField([
            'id'         => 'stats_counter_6_number',
            'section_id' => 'opt-text-subsection-stats',
            'type'       => 'text',
            'label'      => __('Counter 6 Number'),
            'attributes' => [
                'name'    => 'stats_counter_6_number',
                'value'   => '12000',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter counter number'),
                    'data-counter' => 10,
                ],
            ],
        ])
        ->setField([
            'id'         => 'stats_counter_6_label',
            'section_id' => 'opt-text-subsection-stats',
            'type'       => 'text',
            'label'      => __('Counter 6 Label'),
            'attributes' => [
                'name'    => 'stats_counter_6_label',
                'value'   => 'Daily Travel Content Sharing Activities',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter counter label'),
                    'data-counter' => 50,
                ],
            ],
        ])
        // ->setField([
        //     'id'         => 'stats_download_title',
        //     'section_id' => 'opt-text-subsection-stats',
        //     'type'       => 'text',
        //     'label'      => __('Download Title'),
        //     'attributes' => [
        //         'name'    => 'stats_download_title',
        //         'value'   => 'TẢI NGAY',
        //         'options' => [
        //             'class'        => 'form-control',
        //             'placeholder'  => __('Enter download title'),
        //             'data-counter' => 50,
        //         ],
        //     ],
        // ])
        // ->setField([
        //     'id'         => 'stats_ios_link',
        //     'section_id' => 'opt-text-subsection-stats',
        //     'type'       => 'text',
        //     'label'      => __('iOS Download Link'),
        //     'attributes' => [
        //         'name'    => 'stats_ios_link',
        //         'value'   => 'https://apps.apple.com/vn/app/xintel/id6733243038?l=vi',
        //         'options' => [
        //             'class'        => 'form-control',
        //             'placeholder'  => __('Enter iOS app download link'),
        //             'data-counter' => 255,
        //         ],
        //     ],
        // ])
        // ->setField([
        //     'id'         => 'stats_android_link',
        //     'section_id' => 'opt-text-subsection-stats',
        //     'type'       => 'text',
        //     'label'      => __('Android Download Link'),
        //     'attributes' => [
        //         'name'    => 'stats_android_link',
        //         'value'   => 'https://images-storage-bucket.s3.ap-southeast-1.amazonaws.com/xin/download/xintel-v1.0.10.apk',
        //         'options' => [
        //             'class'        => 'form-control',
        //             'placeholder'  => __('Enter Android app download link'),
        //             'data-counter' => 255,
        //         ],
        //     ],
        // ])




        // Strategic Partners Section
        ->setSection([
            'title'      => __('12. Section Partners'),
            'desc'       => __('Strategic Partners section settings'),
            'id'         => 'opt-text-subsection-strategic-partners',
            'subsection' => true,
            'icon'       => 'fa fa-handshake',
        ])
        ->setField([
            'id'         => 'partner_heading',
            'section_id' => 'opt-text-subsection-strategic-partners',
            'type'       => 'text',
            'label'      => __('Section Title'),
            'attributes' => [
                'name'    => 'partner_heading',
                'value'   => 'STRATEGIC PARTNER',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 120,
                ],
            ],
        ])
        ->setField([
            'id'         => 'partner_sub_heading',
            'section_id' => 'opt-text-subsection-strategic-partners',
            'type'       => 'textarea',
            'label'      => __('Section Description'),
            'attributes' => [
                'name'    => 'partner_sub_heading',
                'value'   => 'We are building the XIN ecosystem alongside leading partners across various sectors – from technology and finance to tourism and media. Trust and long-term collaboration are the foundation of every step forward.',
                'options' => [
                    'class' => 'form-control',
                    'rows'  => 3,
                ],
            ],
        ])
        ->setField([
            'id'         => 'partners',
            'section_id' => 'opt-text-subsection-strategic-partners',
            'type'       => 'repeater',
            'label'      => __('Partners - (Note: must be divisible by 8)'),
            'attributes' => [
                'name'   => 'partners',
                'value'  => null,
                'fields' => [
                    [
                        'type'       => 'text',
                        'label'      => __('Partner Name'),
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
                        'type'       => 'mediaImage',
                        'label'      => __('Partner Logo'),
                        'attributes' => [
                            'name'  => 'logo',
                            'value' => null,
                        ],
                    ],
                    // [
                    //     'type'       => 'text',
                    //     'label'      => __('Partner Website'),
                    //     'attributes' => [
                    //         'name'    => 'website',
                    //         'value'   => null,
                    //         'options' => [
                    //             'class'        => 'form-control',
                    //             'data-counter' => 255,
                    //         ],
                    //     ],
                    // ],
                ],
            ],
        ])




        // Download Section
        ->setSection([
            'title'      => __('13. Section Download'),
            'desc'       => __('Download section settings'),
            'id'         => 'opt-text-subsection-download',
            'subsection' => true,
            'icon'       => 'fa fa-download',
        ])
        ->setField([
            'id'         => 'download_background_image',
            'section_id' => 'opt-text-subsection-download',
            'type'       => 'mediaImage',
            'label'      => __('Background Image'),
            'attributes' => [
                'name'  => 'download_background_image',
                'value' => null,
            ],
        ])
        ->setField([
            'id'         => 'download_title',
            'section_id' => 'opt-text-subsection-download',
            'type'       => 'text',
            'label'      => __('Section Title'),
            'attributes' => [
                'name'    => 'download_title',
                'value'   => 'DOWNLOAD NOW!',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 120,
                ],
            ],
        ])
        ->setField([
            'id'         => 'download_appstore_link',
            'section_id' => 'opt-text-subsection-download',
            'type'       => 'text',
            'label'      => __('App Store Link'),
            'attributes' => [
                'name'    => 'download_appstore_link',
                'value'   => '#',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 255,
                ],
            ],
        ])
        // ->setField([
        //     'id'         => 'download_appstore_image',
        //     'section_id' => 'opt-text-subsection-download',
        //     'type'       => 'mediaImage',
        //     'label'      => __('App Store Image'),
        //     'attributes' => [
        //         'name'  => 'download_appstore_image',
        //         'value' => null,
        //     ],
        // ])
        ->setField([
            'id'         => 'download_playstore_link',
            'section_id' => 'opt-text-subsection-download',
            'type'       => 'text',
            'label'      => __('Google Play Link'),
            'attributes' => [
                'name'    => 'download_playstore_link',
                'value'   => '#',
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 255,
                ],
            ],
        ])
        // ->setField([
        //     'id'         => 'download_playstore_image',
        //     'section_id' => 'opt-text-subsection-download',
        //     'type'       => 'mediaImage',
        //     'label'      => __('Google Play Image'),
        //     'attributes' => [
        //         'name'  => 'download_playstore_image',
        //         'value' => null,
        //     ],
        // ])

        // Footer Section
        ->setSection([
            'title'      => __('14. Footer Section'),
            'desc'       => __('Footer settings for website'),
            'id'         => 'opt-text-subsection-footer',
            'subsection' => true,
            'icon'       => 'fa fa-window-minimize',
        ])
        ->setField([
            'id'         => 'footer_text',
            'section_id' => 'opt-text-subsection-footer',
            'type'       => 'textarea',
            'label'      => __('Footer Text'),
            'attributes' => [
                'name'    => 'footer_text',
                'value'   => '<b>XIN Ecosystem</b> <br> Explore the world and begin your transformation journey in a fairer and more convenient way with XIN.',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter footer text'),
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
        // ->setField([
        //     'id'         => 'footer_telegram_icon',
        //     'section_id' => 'opt-text-subsection-footer',
        //     'type'       => 'mediaImage',
        //     'label'      => __('Telegram Icon'),
        //     'attributes' => [
        //         'name'    => 'footer_telegram_icon',
        //         'value'   => null,
        //     ],
        // ])
        ->setField([
            'id'         => 'footer_telegram_link',
            'section_id' => 'opt-text-subsection-footer',
            'type'       => 'text',
            'label'      => __('Telegram Link'),
            'attributes' => [
                'name'    => 'footer_telegram_link',
                'value'   => '#',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter Telegram link'),
                    'data-counter' => 255,
                ],
            ],
        ])
        // ->setField([
        //     'id'         => 'footer_facebook_icon',
        //     'section_id' => 'opt-text-subsection-footer',
        //     'type'       => 'mediaImage',
        //     'label'      => __('Facebook Icon'),
        //     'attributes' => [
        //         'name'    => 'footer_facebook_icon',
        //         'value'   => null,
        //     ],
        // ])
        ->setField([
            'id'         => 'footer_facebook_link',
            'section_id' => 'opt-text-subsection-footer',
            'type'       => 'text',
            'label'      => __('Facebook Link'),
            'attributes' => [
                'name'    => 'footer_facebook_link',
                'value'   => 'https://www.facebook.com/profile.php?id=61561928653091&mibextid=LQQJ4d',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter Facebook link'),
                    'data-counter' => 255,
                ],
            ],
        ])
        // ->setField([
        //     'id'         => 'footer_youtube_icon',
        //     'section_id' => 'opt-text-subsection-footer',
        //     'type'       => 'mediaImage',
        //     'label'      => __('YouTube Icon'),
        //     'attributes' => [
        //         'name'    => 'footer_youtube_icon',
        //         'value'   => null,
        //     ],
        // ])
        ->setField([
            'id'         => 'footer_youtube_link',
            'section_id' => 'opt-text-subsection-footer',
            'type'       => 'text',
            'label'      => __('YouTube Link'),
            'attributes' => [
                'name'    => 'footer_youtube_link',
                'value'   => 'https://www.youtube.com/channel/UC3dwgM2BCAcKXuzSsdw-1dQ',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter YouTube link'),
                    'data-counter' => 255,
                ],
            ],
        ])
        // ->setField([
        //     'id'         => 'footer_tiktok_icon',
        //     'section_id' => 'opt-text-subsection-footer',
        //     'type'       => 'mediaImage',
        //     'label'      => __('TikTok Icon'),
        //     'attributes' => [
        //         'name'    => 'footer_tiktok_icon',
        //         'value'   => null,
        //     ],
        // ])
        ->setField([
            'id'         => 'footer_tiktok_link',
            'section_id' => 'opt-text-subsection-footer',
            'type'       => 'text',
            'label'      => __('TikTok Link'),
            'attributes' => [
                'name'    => 'footer_tiktok_link',
                'value'   => 'https://www.tiktok.com/@educhainglobal?is_from_webapp=1&sender_device=pc',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter TikTok link'),
                    'data-counter' => 255,
                ],
            ],
        ])
        // ->setField([
        //     'id'         => 'footer_twitter_icon',
        //     'section_id' => 'opt-text-subsection-footer',
        //     'type'       => 'mediaImage',
        //     'label'      => __('Twitter/X Icon'),
        //     'attributes' => [
        //         'name'    => 'footer_twitter_icon',
        //         'value'   => null,
        //     ],
        // ])
        ->setField([
            'id'         => 'footer_twitter_link',
            'section_id' => 'opt-text-subsection-footer',
            'type'       => 'text',
            'label'      => __('Twitter/X Link'),
            'attributes' => [
                'name'    => 'footer_twitter_link',
                'value'   => 'https://x.com/Educhain_Global',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter Twitter/X link'),
                    'data-counter' => 255,
                ],
            ],
        ])
        // ->setField([
        //     'id'         => 'footer_chat3_icon',
        //     'section_id' => 'opt-text-subsection-footer',
        //     'type'       => 'mediaImage',
        //     'label'      => __('Chat3 Icon'),
        //     'attributes' => [
        //         'name'    => 'footer_chat3_icon',
        //         'value'   => null,
        //     ],
        // ])
        ->setField([
            'id'         => 'footer_chat3_link',
            'section_id' => 'opt-text-subsection-footer',
            'type'       => 'text',
            'label'      => __('Bsky Link'),
            'attributes' => [
                'name'    => 'footer_chat3_link',
                'value'   => '#',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Enter Bsky link'),
                    'data-counter' => 255,
                ],
            ],
        ]);
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
