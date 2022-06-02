<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Bookstore;
use App\Models\User;

class Book extends Model
{
    use HasFactory;

    protected $table = "books";

    protected $fillable = [
        'id',
        'Tittle',
        'Genre',
        'Editorial',
        'Price',
        'Author',
        'Reading_age',
        'Format',
        'Review',
        'Score',
        'Image',
        'user_id',
        'bookstore_id'
    ];

    public function bookstore() {

        return $this->hasMany(Bookstore::class, 'bookstore_id');
    }

    public function user() {

        return $this->hasMany(User::class, 'user_id');
    }
}
