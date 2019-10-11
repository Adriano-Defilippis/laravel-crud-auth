@extends('layouts.app')
@section('content')

  <div class="box-wrapper">
    @foreach ($cats as $cat)
      <div class="box">
        <span>Name:</span>
        <p>{{ $cat -> name }}</p>
        <span>Race</span>
        <p>{{ $cat -> race }}</p>
        @auth
          <div class="actions">
            @include('elements.links_actions')
          </div>
        @endauth
        <div class="img_profile">
            <img src="img/{{ $cat -> id }}_{{ $cat -> imgCat -> src }}.jpg" alt="{{ $cat -> imgCat -> src }}">
        </div>
      </div>
    @endforeach
  </div>

@endsection
