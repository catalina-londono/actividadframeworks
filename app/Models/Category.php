<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;
    public $table="categories";
    protected $fillable = [
        "nombre",
        "descripcion",
        "foto"
    ];

    public function posts(){

        return $this->belongsToMany(Post::class,"category_post");
    }

}
