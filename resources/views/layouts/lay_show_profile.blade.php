<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
</head>
<body>
  <header class="main-header">
    <nav>
      <ul class="flex">
        <li><a href="{{ url('/') }}">Blog Gattini</a></li>
        <div class="nav-right">
          @if (Route::current()->getName() != 'home')
            <li><a href="{{ route('home') }}">Home</a></li>
          @endif
        @guest
          <li><a href="{{ route('login') }}">Log-in</a> </li>

          @if (Route::has('register'))
            <li><a href="{{ route('register') }}">Register</a> </li>
          @endif
        @else
          <li class="nav-item dropdown">
            <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                {{ Auth::user()->name }} <span class="caret"></span>
            </a>

            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="{{ route('logout') }}"
                   onclick="event.preventDefault();
                                 document.getElementById('logout-form').submit();">
                    {{ __('Logout') }}
                </a>

                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                    @csrf
                </form>
              </div>

        </li>
      </div>
        @endguest
      </ul>
    </nav>
  </header>

      <main class="py-4">
        <div class="container">
          <div class="landscape">
            <img class="img-landscape"  src="../img/12/12_landscape.jpg" alt="landscape.jpg">
            <div class="img-profile">
              <img src="../img{{ $cat -> imgCat -> src }}" alt="img/{{ $cat -> id }}_{{ $cat -> imgCat -> src }}.jpg">
            </div>
          </div>

          <header class="header-nav">

            <nav>
              <ul>
                <li><a href="{{route('post.show', $cat -> id)}}">Post</a></li>
              @if (Auth::user()-> id == $cat -> user_id )
                <li><a href="{{route('post.createpost', $cat -> id)}}">New Post</a></li>
              @else
                <li><a href="#">Write a message</a></li>
              @endif
                <li><a href="{{route('messageSent.show', $cat -> id)}}">messages sent</a></li>

              </ul>
            </nav>
          </header>


          <div class="main">
            @yield('content')
          </div>

        </div>


      </main>
    </div>
</body>
</html>
