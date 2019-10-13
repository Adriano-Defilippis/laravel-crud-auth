@extends('layouts.lay_show_profile')

@section('content')

  <div class="wrapper-posts">
    <div class="box">
      <form class="form-post-create" action="{{route('posts.store')}}" method="post">
        @csrf
        @method('POST')

        <div class="form-label">
          <label for="title"><span>Title</span> </label>
          <input type="text" name="title" value="">
        </div>

        <div class="form-label">
          <label for="text"><span>Text</span></label>
          <input type="text" name="text" value="">
        </div>

        <div class="hidden-label">
          <label for="cat_id"></label>
          <input type="text" name="cat_id" value="{{ $cat -> id }}">

        </div>

        <div class="form-label">
          <button type="submit" name="button">Send</button>
        </div>

      </form>

    </div>
  </div>

@endsection
