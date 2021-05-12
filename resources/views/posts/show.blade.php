@extends('layouts.app')

@section('content')
    <a href="/posts" class="btn btn-default">Go back</a>

    <h1>{{$post->title}}</h1>
    <div class="row">
            <div class="col-md-4">
                <img style="width: 150px; height: 150px; background-size: cover;" src="/storage/cover_images/{{$post->cover_image}}" alt="picture">
            </div>
            <div class="col-md-8">
                <p>{{$post->body}}</p>
            </div>
    </div>
    

    <hr>
    <a href="/posts/{{$post->id}}/edit" class="btn btn-warning">Edit profile</a>
    {!! Form::open(['action' => ['\App\Http\Controllers\PostsController@destroy', $post->id], 
                                  'method' => 'POST', 'class' => 'pull-right']) !!}

    {{Form::hidden('_method', 'DELETE')}}
    {{Form::submit('Delete profile', ['class' => 'btn btn-danger mt-2'])}}
    {!! Form::close() !!}                              
@endsection