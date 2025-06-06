<?php

app()->booted(function () {
    theme_option()
        ->setField([
            'id'         => 'copyright',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'text',
            'label'      => __('Copyright'),
            'attributes' => [
                'name'    => 'copyright',
                'value'   => '© 2024, XIN. All rights reserved. XINTEL CORPORATION LIMITED',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Change copyright'),
                    'data-counter' => 250,
                ],
            ],
            'helper'     => __('Copyright on footer of site'),
        ])
        ->setField([
            'id'         => 'primary_font',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'googleFonts',
            'label'      => __('Primary font'),
            'attributes' => [
                'name'  => 'primary_font',
                'value' => 'Manrope',
            ],
        ]);
        // ->setField([
        //     'id'         => 'primary_color',
        //     'section_id' => 'opt-text-subsection-general',
        //     'type'       => 'customColor',
        //     'label'      => __('Primary color'),
        //     'attributes' => [
        //         'name'  => 'primary_color',
        //         'value' => '#ff2b4a',
        //     ],
        // ])
});
