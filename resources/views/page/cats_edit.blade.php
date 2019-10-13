@extends('layouts.app')

@section('content')

  {{-- @dd(Auth::user()-> id == $cat -> user_id) --}}

  <form method="POST" action="{{ route('cats.update', $cat -> id) }}" files="true" enctype="multipart/form-data">
      @csrf
      @method('PUT')

      <div class="form-group row">
          <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Name') }}</label>

          <div class="col-md-6">
              <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ $user -> name }}" required autocomplete="name" autofocus>

              @error('name')
                  <span class="invalid-feedback" role="alert">
                      <strong>{{ $message }}</strong>
                  </span>
              @enderror
          </div>
      </div>

      <div class="form-group row">
          <label for="race" class="col-md-4 col-form-label text-md-right">Race</label>

          <div class="col-md-6">
              <input id="race" type="text" class="form-control @error('race') is-invalid @enderror" name="race" value="{{ $cat -> race }}" required autocomplete="race" autofocus>

              @error('race')
                  <span class="invalid-feedback" role="alert">
                      <strong>{{ $message }}</strong>
                  </span>
              @enderror
          </div>
      </div>

      <div class="form-group row mb-0">
          <div class="col-md-6 offset-md-4">
              <button type="submit" class="btn btn-primary">
                  {{ __('Register') }}
              </button>
          </div>
      </div>
  </form>


@endsection
