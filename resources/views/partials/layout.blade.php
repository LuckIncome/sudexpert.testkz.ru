<!DOCTYPE html>
<html lang="{{ session()->get('locale') }}">
  @include('partials.head')
<body>
  <vue id="app">       
    @include('partials.header')
    <main class="main" :class="{'main-home':isIndex}"> 
      @yield('content')
    </main>
    @include('partials.footer')
    @include('partials.sidebar')
    @include('partials.modals')
    <!-- Затемнение сайта -->
    <div class="wrapper" :class="{'wrapper-show': isWrapper}" @click="toggleWrapper">
    </div>
    <!-- /Затемнение сайта -->
  </vue>
  @include('partials.scripts')
  @yield('scripts')
</body>
</html>