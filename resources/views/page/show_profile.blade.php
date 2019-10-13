@extends('layouts.lay_show_profile')

@section('content')

  {{-- @dd(Auth::user()-> id == $cat -> user_id) --}}
  <div class="box-wrapper">
    @foreach ($posts as $post)
      <div class="box">
        <div class="img_profile">
            <a href="{{ route('cats.show', $cat -> id ) }}">
              <img src="/img{{ $post -> cat -> name }}" alt="/img{{ $post -> cat -> name }}.jpg">
            </a>
        </div>
        <div class="box-text">
          <p><span>Title</span></p>
          <p>{{$post -> title}}</p>

          <p><span>Post</span></p>
          <p>{{$post -> text}}</p>
        </div>

        @if (Auth::user()-> id == $cat -> user_id )
          <div class="actions">
            @include('elements.links_actions_post')
          </div>
        @endif

      </div>
    @endforeach
  </div>


@endsection
