@php
    $supportedLocales = Language::getSupportedLocales();
    $currentLocale = app()->getLocale();
@endphp

@if ($supportedLocales && count($supportedLocales) > 1)
    <div class="lang-dropdown">
        <a href="javascript:void(0);" class="selected-lang">
            @foreach ($supportedLocales as $localeCode => $properties)
                @if ($currentLocale == $localeCode)
                    {!! language_flag($localeCode, $properties['lang_name'], 24) !!}
                    <span>{{ strtoupper($localeCode) }}</span>
                    <i class="fas fa-chevron-down"></i>
                @endif
            @endforeach
        </a>
        <div class="lang-options">
            @foreach ($supportedLocales as $localeCode => $properties)
                @if ($currentLocale != $localeCode)
                    <a href="{{ Language::getSwitcherUrl($localeCode, $properties['lang_code']) }}">
                        {!! language_flag($localeCode, $properties['lang_name'], 24) !!}
                        <span>{{ strtoupper($localeCode) }}</span>
                    </a>
                @endif
            @endforeach
        </div>
    </div>
@endif

<style>
    .language-switcher-li {
        position: relative;
    }

    .language-switcher-li:before {
        content: none !important;
    }

    .language-switcher-li {
        margin-left: 0px !important;
        margin-right: 0px !important;
        padding-left: 0px !important;
        padding-right: 0px !important;
    }

    .language-switcher-li .lang-dropdown {
        position: relative;
        cursor: pointer;
    }

    .language-switcher-li .selected-lang {
        display: flex;
        align-items: center;
        color: var(--white-color);
        font-size: 16px;
        font-weight: 500;
        text-decoration: none;
    }

    .language-switcher-li .selected-lang i {
        margin-left: 3px;
        font-size: 10px;
    }

    .language-switcher-li .selected-lang span {
        margin: 0 3px;
    }

    .language-switcher-li .lang-options {
        position: absolute;
        top: 100%;
        right: 0;
        min-width: 80px;
        background-color: var(--color-three);
        border: 1px solid rgba(255, 255, 255, 0.1);
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        opacity: 0;
        visibility: hidden;
        transition: all 0.3s ease;
        z-index: 999;
    }

    .language-switcher-li .lang-dropdown:hover .lang-options,
    .language-switcher-li .lang-dropdown.active .lang-options {
        opacity: 1;
        visibility: visible;
    }

    .language-switcher-li .lang-options a {
        display: flex;
        align-items: center;
        padding: 5px 10px;
        color: var(--white-color);
        font-size: 16px;
        transition: all 0.3s ease;
        text-decoration: none;
        white-space: nowrap;
    }

    .language-switcher-li .lang-options a span {
        margin: 0 3px;
    }

    .language-switcher-li .lang-options a:hover,
    .language-switcher-li .lang-options a.active {
        background-color: var(--main-color);
    }
</style>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        const langDropdown = document.querySelector('.lang-dropdown');
        if (langDropdown) {
            langDropdown.addEventListener('click', function(e) {
                e.stopPropagation();
                this.classList.toggle('active');
            });

            // Close when clicking outside
            document.addEventListener('click', function(e) {
                if (!langDropdown.contains(e.target)) {
                    langDropdown.classList.remove('active');
                }
            });
        }
    });
</script>
