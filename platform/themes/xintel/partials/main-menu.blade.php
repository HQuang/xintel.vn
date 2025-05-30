<ul {!! BaseHelper::clean($options) !!}>
    @foreach ($menu_nodes as $key => $row)
        <li class="@if ($row->has_child) menu-item-has-children @endif {{ $row->css_class }} @if ($row->active) active @endif">
            <a href="{{ $row->url }}" target="{{ $row->target }}">
                {!! $row->icon_html !!}
                <span class="menu-title">{{ $row->title }}</span>
            </a>
            @if ($row->has_child)
                {!!
                    Menu::generateMenu([
                        'menu' => $menu,
                        'menu_nodes' => $row->child,
                        'view' => 'main-menu',
                        'options' => ['class' => 'sub-menu'],
                    ])
                !!}
            @endif
        </li>
    @endforeach
</ul>
