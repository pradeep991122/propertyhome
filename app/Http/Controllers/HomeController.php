<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Property;
use Illuminate\Support\Facades\Validator;

class HomeController extends Controller
{
    public function store(Request $request)
    {
        try {
            $validator = Validator::make($request->all(), [
                'name' => 'required|string|max:50',
                'description' => 'required|string|max:250',
                'file' => 'required|image|max:5000', // Max size: 5MB
                'type' => 'required|in:1,2,3',
            ]);

            if ($validator->fails()) {
                return response()->json(['errors' => $validator->errors()], 422);
            }

            //  private folder in storage
            $filePath = $request->file('file')->store('private_folder', 'private');

            // Save data to the database
            $data = new Property();
            $data->name = $request->input('name');
            $data->description = $request->input('description');
            $data->file = $filePath;
            $data->type = $request->input('type');
            $data->created_at =now();
            $data->updated_at =now();
            $data->save();

            return response()->json([
                "status" => true,
                "message" => 'Property Data Inserted Successfully!',
                "data" => [
                    "name" => $data->name,
                    "description" => $data->description,
                    "type" => $data->type,
                ],
            ], 201);

        } catch (\Exception $e) {
            return response()->json(['error' => 'Error saving data to the database'], 500);
        }
    }
        public function index()
        {
            $properties = Property::select('name', 'type', 'description')->paginate(10);
            return view('property', compact('properties'));
        }
        public function show($id)
        {
            $data = Property::find($id);
        
            if (!$data) {
                return response()->json(['error' => 'Data not found for ID: ' . $id], 404);
            }
        
            //$temporaryImageUrl = storage_path('app/' . $data->file);
            $temporaryImageUrl = asset('/storage/app'. $data->file);
            return response()->json([
                'name' => $data->name,
                'type' => $data->type,
                'description' => $data->description,
                'temporary_image_url' => $temporaryImageUrl,
            ], 200);
        }
     
    public function destroy($id)
    {
        $property = Property::findOrFail($id);

        if ($property->delete()) {
        
            if ($property->file) {
                Storage::delete('private_folder/' . $property->file);
            }

            return redirect()->route('properties.index')->with('success', 'Property deleted successfully.');
        } else {
            return redirect()->route('properties.index')->with('error', 'Failed to delete property.');
        }
    }
}
