@extends('layouts.base')

@section('content')
<br>
    <a href="/projects" class="btn btn-primary">Go Back</a>
    <h1>{{$project->title}}</h1>
    <div class="col-md-4 col-sm4">
        Status: {{$project->status}}
    </div>
    <div>
       <p> Project ID: {!!$project->project_id!!} </p>
    </div>
    <div>
        <p> First Disbursement: {!!$project->first_disbursement!!} </p>
    </div>
    <div>
        <p> Total Cost: {!!$project->amount!!} </p>
    </div>
    <div>

        </div>
    <div>
        <p> Readiness: {!!$project->readiness_nap!!} </p>
        <p> Readiness Type: {!!$project->readiness_type!!} </p>
    </div>
    <hr>
<small>Started on: {{$project->start_date}} and Ends on:   {{$project->stop_date}}</small>
    <hr>
    
    <br>
    <br>
@endsection