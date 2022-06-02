<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Book;
use App\Models\User; 

class Bookreview extends Model
{
    use HasFactory;

    protected $table = "bookreviews";

    protected $fillable = [
        'id',
        'Review',
        'user_id',
        'book_id'
    ];
    
    public function user() {

        return $this->hasMany(User::class, 'user_id');
    }

    public function book() {

        return $this->hasMany(Book::class, 'book_id');
    }
}
