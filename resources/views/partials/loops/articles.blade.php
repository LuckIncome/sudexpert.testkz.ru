@foreach($acts as $act)
<a class="acts-item" href="{{ route('acts.show', ['article' => $act->slug]) }}">
    <img src="{{ Voyager::image($act->image) }}" alt="{{ $act->title }}">
    <div>{{date('d.m.Y', strtotime($act->created_at))}}</div>
    <h3>{{ $act->title }}</h3>
    <p>{!! \Illuminate\Support\Str::limit(strip_tags($act->content), 133,'...') !!}</p>
</a>
@endforeach