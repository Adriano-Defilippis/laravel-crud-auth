@extends('layouts.app')
  @section('content')
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
            <li><a id='show-post-ajax-link'>Post</a></li>
          @if (Auth::user()-> id == $cat -> user_id )
            <li><a id='new-post-ajax-link'>New Post</a></li>
          @else
            <li><a href="#">Write a message</a></li>
          @endif
            <li><a href="#">messages sent</a></li>

          </ul>
        </nav>
      </header>


      <div class="main">
        @yield('content')
      </div>

    </div>


    </main>
    </div>
@endsection
