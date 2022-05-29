<script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.11.1/baguetteBox.min.js" integrity="sha512-7KzSt4AJ9bLchXCRllnyYUDjfhO2IFEWSa+a5/3kPGQbr+swRTorHQfyADAhSlVHCs1bpFdB1447ZRzFyiiXsg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdn.jsdelivr.net/npm/maska@latest/dist/maska.js"></script>
<script src="{{ asset('assets/js/carousel.js') }}"></script>
<script src="{{ asset('assets/js/component.js') }}"></script>
<script src="{{ asset('assets/js/script.js') }}"></script>
<script src="{{ asset('assets/js/slides.js') }}"></script>

<script type="text/javascript">
	var token = document.head.querySelector('meta[name="csrf-token"]');
	window.axios.defaults.headers.common['X-CSRF-TOKEN'] = token.content;
</script>

<script type="text/javascript">
$(document).ready(function() {
    $("#feedback_consult").on('submit', function(event) {
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
                  vue.toggleModalSuccessFeedback();
                } 
                $inputs.prop("disabled", false);
                $inputs.val("");
                $inputs.prop("checked",false);
                vue.valueFeedbackInput = '';
        }).catch((error) => console.log(error.response.data));  
    });
	
	$("#feedback_faq").on('submit', function(event) {
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
                  vue.toggleModalSuccessFeedback();
                } 
                $inputs.prop("disabled", false);
                $inputs.val("");
                $inputs.prop("checked",false);
                vue.valueFeedbackInput = '';
        }).catch((error) => console.log(error.response.data));  
    });
}); 
</script>