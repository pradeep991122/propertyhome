<style>
.pagination {
    font-size: 5MB.25rem; /* Change the font size to your desired size */
}
</style>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity=">
    </style>
</head>
<body>
    
@extends('layouts.app')

@section('content')
<div class="container mt-5">
    <h1>Property Form</h1>
    
    <form id="propertyForm" action="{{ route('properties.store') }}" method="POST" enctype="multipart/form-data">
        @csrf
        <div class="mb-3">
            <label for="name" class="form-label">Name</label>
            <input type="text" class="form-control" id="name" name="name" required>
        </div>
        <div class="mb-3">
            <label for="description" class="form-label">Description</label>
            <textarea class="form-control" id="description" name="description" required></textarea>
        </div>
        <div class="mb-3">
            <label for="file" class="form-label">File (Image)</label>
            <input type="file" class="form-control" id="file" name="file" required>
        </div>
        <div class="mb-3">
            <label for="type" class="form-label">Type</label>
            <select class="form-control" id="type" name="type" required>
                <option value="1">Type 1</option>
                <option value="2">Type 2</option>
                <option value="3">Type 3</option>
            </select>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
    
    @if(session('success'))
        <div class="alert alert-success mt-3">
            {{ session('success') }}
        </div>
    @endif

    
    <hr>
    <h2>Property List</h2>
    <table class="table">
        <thead>
            <tr>
                <th>Name</th>
                <th>Type</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            @foreach($properties as $property)
                <tr>
                    <td>{{ $property->name }}</td>
                    <td>{{ $property->type }}</td>
                    <td>{{ $property->description }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>

    <!-- Manual Pagination Links -->
    <div class="d-flex justify-content-end mt-3">
        <ul class="pagination">
            @if ($properties->onFirstPage())
                <li class="page-item disabled"><span class="page-link">Previous</span></li>
            @else
                <li class="page-item"><a href="{{ $properties->previousPageUrl() }}" class="page-link">Previous</a></li>
            @endif

            @foreach ($properties->getUrlRange(1, $properties->lastPage()) as $page => $url)
                @if ($page == $properties->currentPage())
                    <li class="page-item active"><span class="page-link">{{ $page }}</span></li>
                @else
                    <li class="page-item"><a href="{{ $url }}" class="page-link">{{ $page }}</a></li>
                @endif
            @endforeach

            @if ($properties->hasMorePages())
                <li class="page-item"><a href="{{ $properties->nextPageUrl() }}" class="page-link">Next</a></li>
            @else
                <li class="page-item disabled"><span class="page-link">Next</span></li>
            @endif
        </ul>
    </div>
</div>

<script src="{{ asset('js/property.js') }}"></script>
@endsection
</body>
</html>
