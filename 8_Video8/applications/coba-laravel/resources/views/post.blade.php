@extends('layouts.main')

@section('container')
    <h2>{{ $post->title }}</h2>
    <p>By. Fowaz Amran in <a href="/categories/{{ $post->category->slug }}">{{ $post->category->name }}</a></p>

    <h5>{{ $post->author }}</h5>
    {!! $post->body !!}

    <p><a href="/posts">Back To Posts</a></p>
@endsection