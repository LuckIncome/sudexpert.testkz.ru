<div class="navigation__menu">
    @if(isset($subtitle))
        <a href="/">@lang('general.main') <i class="bi bi-chevron-right"></i></a>
        <a href="{{ $linktitle }}">{{ $title }} <i class="bi bi-chevron-right"></i></a>
        <span>{{ $subtitle }}</span>
    @else
        <a href="/">@lang('general.main') <i class="bi bi-chevron-right"></i></a>
        <span>{{ $title }}</span>
    @endif  
</div>