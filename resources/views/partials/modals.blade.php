<!-- Модалки -->
 <div class="modal modal-leave-feedback" :class="{'modal-show': isModalLeaveFeedback}">
    <button @click="toggleWrapper" class="modal__close"><i class="bi bi-x-lg"></i></button>
    <div class="modal__content">
        <h3>@lang('general.needConsultation')</h3>
        <p>@lang('general.leaveYourNumberQuestions')</p>
        <form id="feedback_consult" action="{{ route('c_feedback') }}" method="POST">
            @csrf
            <input required type="text" name="phone" @click="phoneValue(event)" placeholder="@lang('general.phoneNumber')*" v-maska="['+7 (###) ##-##-##', '+7 (###) ###-##-##']">
            <input type="hidden" name="url" value="{{\Request::url()}}">
            <button type="submit">@lang('general.sendRequest')</button>
        </form>
    </div>
</div>
<div class="modal modal-reviews" :class="{'modal-show': isModalReviews}">
    <button @click="toggleWrapper" class="modal__close"><i class="bi bi-x-lg"></i></button>
    <div class="modal__content">
        <h3>@lang('general.leaveYourHonestFeedback')</h3>
        <form id="feedback_review" action="{{ route('p_review') }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div>
                <label>@lang('general.howContactYou')</label>
                <input type="text" name="name" placeholder="@lang('general.name')*" required>
            </div>
            <div>
                <label>@lang('general.yourEmail')</label>
                <input type="email" name="email" placeholder="example@mail.ru*" required>
            </div>
            <label>@lang('general.yourFeedback')</label>
            <textarea name="text"></textarea>
            
            <div class="buttons">
                <button type="submit">@lang('general.send')</button>
                <label class="upload" for="upload-photo"><img src="{{ asset('assets/images/icons/attached.svg') }}" alt="icon"> @lang('general.attachFile')</label>
                <input type="file" name="photo" class="file" id="upload-photo" />
            </div>

            <p>@lang('general.byClicking') <a href="#">@lang('general.privacyPol')</a></p>
        </form>
    </div>
</div>
<div class="modal modal-success-feedback" :class="{'modal-show': isModalSuccessFeedback}">
    <button @click="toggleWrapper" class="modal__close"><i class="bi bi-x-lg"></i></button>
    <div class="modal__content">
        <h3>@lang('general.thanks')</h3>
        <h4>@lang('general.yourApplicationAccepted') </h4>
        <h4>@lang('general.ourExpertContactSoon') </h4>
        <a href="/">@lang('general.goToTheMainPage')</a>
    </div>
</div>
<div class="modal modal-success-feedback" :class="{'modal-show': isModalSuccessReviews}">
    <button @click="toggleWrapper" class="modal__close"><i class="bi bi-x-lg"></i></button>
    <div class="modal__content">
        <h3>@lang('general.thankYouYourHonestFeedback') </h3>
        <a href="/">@lang('general.goToTheMainPage')</a>
    </div>
</div>
<!-- vue.toggleModalSuccessFeedback() -->
<!-- vue.toggleModalSuccessReviews() -->
<!-- /Модалки -->