<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Book;
use App\Models\User;

class UserBook extends Model
{
    use HasFactory;

    protected $table = "usersbooks";

    protected $fillable = [
        'id',
        'user_id',
        'book_id'
        
    ];
    

    public function user() {

        return $this->belongsToMany(User::class);
    }

    public function book() {

        return $this->belongsToMany(Book::class);
    }
}
