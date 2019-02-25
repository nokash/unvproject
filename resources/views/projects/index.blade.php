@extends('layouts.base')

@section('content')
<br><br>
<h1>Projects Section</h1>
  <br>
  <a href="/projects/create" class="btn btn-primary">Add Project</a> <br><br>
  @if (count($projects) > 0)
  <table class="table table-striped">
      {!! Form::open([ 'action' =>['ProjectsController@index'], 'method' => 'get' ]) !!}
          <p>{!! Form::select( 'per_page', [ '10' => '10', '15' => '15', '20' => '20', '50' => '50'], 'per_page', array('onchange' => "submit()") ) !!}
          </p>
      {!!Form::close()!!}
      <tr>
          <th>Title</th>
          <th>Status</th>
          <th>Action</th>
      </tr>
      
      @foreach ($projects as $project)
          <tr>
              <td>{{$project->title}}</td>
              <td>{{$project->status}}</td>
              <td><a href="/projects/{{$project->id}}/" class="btn btn-primary">View</a>
                <a href="/projects/{{$project->id}}/edit" class="btn btn-primary">Edit</a>
              
              
                  {!!Form::open(['action' => ['ProjectsController@destroy', $project->id], 'method' => 'POST', 'class' => 'float-right'])!!}
                      {{Form::hidden('_method', 'DELETE')}}
                      {{Form::submit('Delete', ['class' => 'btn btn-danger'])}}
                  {!!Form::close()!!}
              </td>
          </tr>
      @endforeach
  </table>
  {{$projects->links()}}
  @else
  <p> You've got no posts!! </p>
@endif
@endsection
