@extends('layouts.app')
@section('content')
    <div class="container">
        <div class="row">
            <div class="col-12 pt-2">
                <a href="/neoWs" class="btn btn-outline-primary btn-sm">Go back</a>

                @forelse($rows as $row)
                    <h3 class="display-one">{{ ucfirst($row->name) }}</h3>
                    <p>Date: {{ $row->date }}</p>
                    <p>Is potentially hazardous asteroid: {{ $row->is_hazardous }}</p>
                    <p>Reference: <a href="{{$row->referenced}}"> Asteroid on site nasa.</a></p>
                    <p>Speed: {{ $row->speed }} kilometers per hour.</p>
                @empty
                    <p class="text-warning">No asteroid.</p>
                @endforelse
            </div>
        </div>
    </div>
@endsection
