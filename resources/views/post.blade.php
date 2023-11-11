@extends('layouts.main')

@section('container')
    <h2>{{ $post->title }}</h2>
    <p>By. <a href="/author/{{ $post->user->username }} " class="text-decoration-none">{{ $post->user->name }} </a> <a href="/categories/{{ $post->category->slug }}" class="text-decoration-none">{{ $post->category->name }}</a></p>

    <h5>{{ $post->author }}</h5>
    {!! $post->body !!}

    <a href="/posts" class="d-block mt-3">Back To Posts</a>
@endsection