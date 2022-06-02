<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Bookstore;
use App\Models\User;

class BookStoreUser extends Model
{
    use HasFactory;

    protected $table = "bookstoresusers";

    protected $fillable = [
        'id',
        'bookstore_id',
        'user_id'
    ];
    
    public function bookstore() {

        return $this->belongsToMany(Bookstore::class);
    }

    public function user() {

        return $this->belongsToMany(User::class);
    }
}
