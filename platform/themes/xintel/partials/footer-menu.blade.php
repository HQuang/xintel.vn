<ul {!! BaseHelper::clean($options) !!}>
    @foreach ($menu_nodes as $key => $row)
        <li>
            <a href="{{ $row->url }}" target="{{ $row->target }}">
                <span class="menu-title">{{ $row->title }}</span>
            </a>
        </li>
    @endforeach
</ul>
