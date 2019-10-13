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
          <li>new post</li>
        </ul>
      </nav>
    </header>
  </div>

@endsection
