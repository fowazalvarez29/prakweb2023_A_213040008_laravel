@extends('layouts.main')

@section('container')
    <h2>{{ $post->title }}</h2>
    <h5>{{ $post->author }}</h5>
    {!! $post->body !!}

    <p><a href="/posts">Back To Posts</a></p>
@endsection