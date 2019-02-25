@extends('layouts.base')

@section('content')
<br><br>
<h1>Edit A Project Here</h1>
{!! Form::open([ 'action' => ['ProjectsController@update', $project->id], 'method' => 'PATCH']) !!}
    {!! Form::text('title', $project->title, ['class' => 'form-control', 'placeholder' => 'Enter the Title Here']) !!}
    <br>
    {!! Form::text('project_id', '', ['class' => 'form-control', 'placeholder' => 'Enter Project ID']) !!} <br>
    {!! Form::text('amount', $project->amount, ['class' => 'form-control', 'placeholder' => 'Enter the Grand Amount Here']) !!} <br>

    <p>
    {!! Form::label('gcf_date', 'Date From GCF: ' ) !!}
    {!! Form::date('gcf_date', \Carbon\Carbon::now()) !!}
    {!! Form::label('start_date', 'Start Date: ' ) !!}
    {!! Form::date('start_date', \Carbon\Carbon::now()) !!}

    {!! Form::label('stop_date', 'Stop Date: ' ) !!}
    {!! Form::date('stop_date', \Carbon\Carbon::now()) !!} </p>
    <br>
    <p>
        {!! Form::select('office', ['1' => 'Europe Office', '2' => 'Economy Division', '3' => 'Latin America Office', '4' => 'Ecosystems Office','5' => 'CCTN Office','6' => 'West Asia Office','7' => 'Asia Pacific Office','8' => 'Africa Office','10' => 'Policy & Programme Division Office']) !!}
        {!! Form::select('readiness_nap', ['Readiness' => 'Readiness', 'NAP' => 'National Adaptation Plans'], ['class' => 'btn btn-danger dropdown-toggle']) !!}
        {!! Form::select('countries[]',['1' => 'Kenya', '2' => 'Uganda', '3' => 'Comoros', '4' => 'Tanzania','5' => 'Brazil','6' => 'Panama', '7' => 'Albania', '8' => 'Romania', '9' => 'Costa Rica', '10' => 'Dominican Republic', '11' => 'Egypt', '12' => 'Morocco', '13' => 'Sudan', '14' => 'Honduras', '15' => 'Jordan', '16' => 'Madagascar', '17' => 'Malaysia', '18' => 'Maldives', '19' => 'Mauritania', '20' => 'Mauritius', '21' => 'Mongolia', '22' => 'Montenegro', '23' => 'Myanmar', '24' => 'Nepal', '25' => 'Niger'],  null, ['class' => 'form-control', 'multiple']) !!}
        </p> <br><br>
    <p>
    {!! Form::text('first_disbursement', $project->first_disbursement, ['class' => 'form-control', 'placeholder' => 'Enter the First Disbursement Amount']) !!}  <br>
    {!! Form::text('readiness_type', $project->readiness_type, ['class' => 'form-control', 'placeholder' => 'Type of Readiness']) !!}  <br>
    {!! Form::text('status', $project->status, ['class' => 'form-control', 'placeholder' => 'Project Status']) !!}  <br>
    </p
    {{Form::hidden('_method', 'PUT')}}
    {{Form::submit('Submit', ['class' => 'btn btn-primary'])}}

{!! Form::close() !!}
@endsection
