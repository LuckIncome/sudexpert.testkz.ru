@extends('partials.layout')
@section('page_title',(strlen($act->title) > 1 ? $act->title : ''))
@section('seo_title', (strlen($act->seo_title) > 1 ? $act->seo_title : ''))
@section('meta_keywords',(strlen($act->meta_keywords) > 1 ? $act->meta_keywords : ''))
@section('meta_description', (strlen($act->meta_description) > 1 ? $act->meta_description : ''))
@section('image','')
@section('url',url()->current())
@section('page_class','page')
@section('content')
 
<section class="navigation">
    <div class="container">
        @include('partials.breadcrumbs', [
            'title' => $page->title,
            'linktitle' => '/acts',
            'subtitle' => $act->title,
        ])
    </div>
</section>

<section class="act">
    <div class="container">
        <div class="act__box">
            <p class="data">{{ date('d.m.Y', strtotime($act->created_at)) }}</p>
            <h1 class="title">{{ $act->title }}</h1>
            <div class="editors">
                {!! $act->content !!}
            </div>
        </div>
    </div>
</section>

<section class="acts-related">
    <div class="container">
        <h2 class="title">Похожие статьи</h2>
        <div class="acts-related__items" id="post">

            @include('partials.loops.articles')

        </div>
        <button id="load-more">@lang('general.watchMore')</button>
    </div>
</section>

@endsection

@section('scripts')
<script type="text/javascript">
$(document).ready(function() {
    function loadMoreData(paginate) {
        var url = '?page=' + paginate;
        axios.get(url).then(res => {
            //console.log(res.data.html); 
            $('#post').append(res.data.html); 
            // if(res.data.html == '') {
            //     $('#post').append('Больше нет НПА!');    
            // }
        }).catch((error) => {
            if (error.response) {
              // The request was made and the server responded with a status code
              // that falls out of the range of 2xx
              console.log(error.response.data);
              console.log(error.response.status);
              console.log(error.response.headers);
            } else if (error.request) {
              // The request was made but no response was received
              // `error.request` is an instance of XMLHttpRequest in the browser and an instance of
              // http.ClientRequest in node.js
              console.log(error.request);
            } else {
              // Something happened in setting up the request that triggered an Error
              console.log('Error', error.message);
            }
            console.log(error.config);
        }); 
    }
    var paginate = 1;
    $('#load-more').click(function(e) {
        e.preventDefault();
        //console.log('test');
        paginate++;
        loadMoreData(paginate);
    });
}); 
</script>
@endsection