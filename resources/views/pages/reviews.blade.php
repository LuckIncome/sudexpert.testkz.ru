@extends('partials.layout')
@section('page_title',(strlen($page->title) > 1 ? $page->title : ''))
@section('seo_title', (strlen($page->seo_title) > 1 ? $page->seo_title : ''))
@section('meta_keywords',(strlen($page->meta_keywords) > 1 ? $page->meta_keywords : ''))
@section('meta_description', (strlen($page->meta_description) > 1 ? $page->meta_description : ''))
@section('image','')
@section('url',url()->current())
@section('page_class','page')
@section('content')
   
<section class="navigation">
    <div class="container">

        @include('partials.breadcrumbs', ['title' => $page->title])

        <div class="navigation__title">
            <h1 class="title">@lang('general.feedbackFromOurCustomers')</h1>
            <button @click="toggleModalReviews">
                @lang('general.leaveReview') 
                <img src="{{ asset('assets/images/icons/edit.svg') }}" alt="edit">
            </button>
        </div>
    </div>
</section>

<section class="reviews-page">
    <div class="container">
        
        @foreach($reviews as $review)
	        <div class="reviews__item">
                @if($review->image)
                    <img src="{{ Voyager::image($review->image) }}" alt="{{ $review->name }}">
                @endif             
	            <div>
	                {!! $review->content !!}
	                <h3>{{ $review->name }}</h3>
	            </div>
	        </div>
        @endforeach
     
    </div>
</section>

@if($reviews)
<section class="pagination">
    {{ $reviews->links('partials.paginate') }}
</section>
@endif 

@endsection

@section('scripts')
<script type="text/javascript">
$(document).ready(function() {
	 $("#feedback_review").on('submit', function(event) {
        event.preventDefault();
        let form = $(this);
        let action = form.attr("action");
        let type = form.attr("method");
        let _token = $('input[name="_token"]').val();
        let fd = new FormData(form[0]);
        let $inputs = form.find("input, select, button, textarea");
        axios.post(action, fd, {
              headers: {
                  'X-CSRF-TOKEN': _token,
              },
            }).then(res => {
                if (res.status === 200) {
                  vue.toggleWrapper();
                  vue.toggleModalSuccessReviews();
                } 
                $inputs.prop("disabled", false);
                $inputs.val("");
                $inputs.prop("checked",false);
                vue.valueFeedbackInput = '';
        }).catch((error) => console.log(error.response.data));  
    });
}); 
</script>
@endsection