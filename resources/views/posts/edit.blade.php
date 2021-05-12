@extends('layouts.app')

@section('content')
    <h1>Edit the profile </h1>
    {!! Form::open(['action' => ['\App\Http\Controllers\PostsController@update', $post->id], 'method' => 'POST', 'enctype' => 'multipart/form-data']) !!}

     <!-- creating a new star name -->

    <div class="form-group">
        {{Form::label('title', 'Star Name')}}
        {{Form::text('title', $post->title, ['class' => 'form-control', 'placeholder' => 'Name'])}}
    </div>

    <!-- creating a new star description -->

    <div class="form-group">
        {{Form::label('body', 'Description')}}
        {{Form::textarea('body', $post->body, ['class' => 'form-control', 'placeholder' => 'Description'])}}
    </div>

    <div class="form-group">
        {{Form::file('cover_image')}}
    </div>

    {{Form::hidden('_method', 'PUT')}}
    {{Form::submit('Submit', ['class' => 'btn btn-primary'])}}

    {!! Form::close() !!}    

@endsection