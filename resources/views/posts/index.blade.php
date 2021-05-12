@extends('layouts.app')



@section('content')
    <h1 class="text-center">Profile Browser </h1>

    <div id="wrapper" class=" bg" >
            <div class="row" style="width: 850px; height:750px;">
                <div class="col-md-4" style="display: flex;
                justify-content: center;
                flex-direction: column;
                float: left;">

                    
                    @if(count($posts) > 1)
                        @foreach($posts as $post)
                    
                        
                            <a class="py-1 px-2 showSingle" target="{{ $post->id }}"
                                style="text-decoration: none; color:black; background:#d7d7d7;
                                border-radius: 7px; border: 1px solid black;">{{ $post->title}}</a>
                                <a class="btn btn-warning" style="width:112px; height: 40px;" href="/posts/{{ $post->id}}/edit">Edit</a>
                    {!! Form::open(['action' => ['\App\Http\Controllers\PostsController@destroy', $post->id],
                      'method' => 'POST', 'class' => 'pull-right']) !!}
                    {{Form::hidden('_method', 'DELETE')}}
                    {{Form::submit('Delete profile', ['class' => 'btn btn-danger mt-2'])}}
                    {!! Form::close() !!}
                                        
                        @endforeach
                    @else
                    @endif

                </div>
            
                   
                <div class="col-md-8">
                    
                    @if(count($posts) > 1)
                    <div>
                        <img style="width: 150px; height: 150px; background-size: cover;" src="/storage/cover_images/{{$post->cover_image}}" alt="picture">
                    </div>
                    @foreach($posts as $post)
                   
                    <div id="div{{ $post->id}}" class="targetDiv">
                        <p>{{ $post->body}}</p>
                    </div>   

                        
                   
                    @endforeach
                    @else
                    
                    
                    @endif
                </div>
                    
            </div>
        
    </div>   

        


    
                         
@endsection


    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
   
    <script>
   

    jQuery(function() {
        jQuery('#showall').click(function() {
          jQuery('.targetDiv').show();
        });
        jQuery('.showSingle').click(function() {
          jQuery('.targetDiv').hide();
          jQuery('#div' + $(this).attr('target')).show();
        });
      });

  </script>