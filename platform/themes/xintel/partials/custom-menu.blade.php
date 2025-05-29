<div class="navbar-collapse collapse clearfix" id="navbarSupportedContent">
    <ul class="navigation clearfix" {!! $options !!}>

        @foreach ($menu_nodes as $key => $row)
            <li class="{{ $row->css_class }} @if ($row->url == Request::url()) current @endif">
                <a href="{{ $row->url }}" target="{{ $row->target }}">{{ $row->title }}</a>
            </li>
        @endforeach
        {{-- Language Switcher --}}
        @php
        $supportedLocales = Language::getSupportedLocales();
        $currentLocale = app()->getLocale();
    @endphp
    @if ($supportedLocales && count($supportedLocales) > 1)
        <li class="dropdown language-switcher-li">
            @foreach ($supportedLocales as $localeCode => $properties)
                @if ($currentLocale == $localeCode)
                    <a href="javascript:void(0);">
                        {!! language_flag($localeCode, $properties['lang_name'], 24) !!}
                        {{ strtoupper($localeCode) }}
                    </a>
                @endif
            @endforeach
            <ul>
                @foreach ($supportedLocales as $localeCode => $properties)
                    @if ($currentLocale != $localeCode)
                        <li>
                            <a href="{{ Language::getSwitcherUrl($localeCode, $properties['lang_code']) }}">
                                {!! language_flag($localeCode, $properties['lang_name'], 24) !!}
                                {{ strtoupper($localeCode) }}
                            </a>
                        </li>
                    @endif
                @endforeach
            </ul>
        </li>
        <li class="language-switcher-li"></li>
        @endif
    </ul>
</div>

<style>
    .language-switcher-li:before {
        position: fixed !important;
        content: none !important;
    }
    .language-switcher-li {
        padding: 0px !important;
    }
</style>
