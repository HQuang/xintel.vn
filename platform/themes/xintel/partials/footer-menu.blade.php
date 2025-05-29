<!-- Footer Column -->
<div class="footer-column col-lg-4 col-md-12 col-sm-12">
    <ul class="footer_navs">
        @foreach ($menu_nodes as $key => $row)
            <li class="{{ $row->css_class }}">
                <a href="{{ $row->url }}" target="{{ $row->target }}">{{ $row->title }} <i class="fa-solid fa-arrow-right fa-fw"></i></a>
            </li>
        @endforeach
    </ul>
</div>