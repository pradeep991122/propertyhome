<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Property extends Model
{
    protected $table = 'properties';
    public $timestamps = false;
    protected $primaryKey = 'id';
    protected $fillable = ['name','description','file','type'];
}
