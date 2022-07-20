
@extends('layouts.app')
@section('content')
    <div class="container">
        <div class="row">
            <div class="col-12 pt-2">
                <div class="row">
                    <div class="col-8">
                        <h1 class="display-one">Near-Earth objects the last 3 days from nasa api!</h1>
                        <p>Near-Earth Objects is = {{$element_count}} (Asteroids - NeoWs)</p>
                        <p>Inserted {{$count_insert_row}} rows to database.</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-8">
                        <h2 class="display-one">All Near-Earth objects from database.</h2>
                    </div>
                </div>
                @forelse($data as $row)
                    <ul>
                        <li><a href="./neoWs/{{ $row->reference }}">{{ ucfirst($row->name) }}</a></li>
                    </ul>
                @empty
                    <p class="text-warning">No asteroid.</p>
                @endforelse
            </div>

        </div>

    </div>
@endsection
