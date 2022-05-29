<ul class="sidebar__menu">
  @php
    if (Voyager::translatable($items)) {
        $items = $items->load('translations');
    }
  @endphp
  @foreach ($items as $item)
  @php
      $originalItem = $item;
      if (Voyager::translatable($item)) {
          $item = $item->translate($options->locale);
      }
      $isActive = null;
      $styles = null;
      $icon = null;
      // Background Color or Color
      if (isset($options->color) && $options->color == true) {
          $styles = 'color:'.$item->color;
      }
      if (isset($options->background) && $options->background == true) {
          $styles = 'background-color:'.$item->color;
      }
      // Check if link is current
      if(url($item->link()) == url()->current() || \Str::contains(url()->current(),$item->link())){
          $isActive = 'active';
      }
  @endphp 
 
  <li>
    <a href="{{ url($item->link()) }}">
      {{ $item->title }}
    </a>
  </li>
    @foreach ($originalItem->children as $child)
      @if($item->title == 'О нас' OR  $item->title == 'Біз туралы' OR $item->title == 'About us')
      @php
        $child = $child;
        if (Voyager::translatable($child)) {
            $child = $child->translate($options->locale);
        }
      @endphp 
      <li><a href="{{ url($child->link()) }}">{{ $child->title }}</a></li>
      @endif
      @endforeach
  @endforeach
</ul>