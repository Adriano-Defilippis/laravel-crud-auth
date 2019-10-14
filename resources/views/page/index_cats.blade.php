@extends('layouts.app')
@section('content')

  <div class="box-wrapper">
    @foreach ($cats as $cat)
      <div class="box">
        <span>Name:</span>
        <p>{{ $cat -> name }}</p>
        <span>Race</span>
        <p>{{ $cat -> race }}</p>
        @if(Auth::user()-> id == $cat -> user_id)
          <div class="actions">
            @include('elements.links_actions')
          </div>
        @endif
        <div class="img_profile">
            <a href="">
              <img src="/img{{ $cat -> imgCat -> src }}" alt="img{{ $cat -> imgCat -> src }}.jpg">
            </a>
        </div>
      </div>
    @endforeach
  </div>

@endsection
