@extends('layouts.lay_show_profile')

@section('content')

  
  <div class="box-wrapper">
    @foreach ($posts as $post)
      <div class="box">
        <div class="img_profile">
            <a href="#">
              <img src="/img#" alt="/img#.jpg">
            </a>
        </div>
        <div class="box-text">
          <p><span>Title</span></p>
          <p>#</p>

          <p><span>Post</span></p>
          <p>#</p>
        </div>

        {{-- @if (Auth::user()-> id == $cat -> user_id ) --}}
          <div class="actions">
            @include('elements.links_actions_post')
          </div>
        {{-- @endif --}}

      </div>
    @endforeach
  </div>


@endsection
