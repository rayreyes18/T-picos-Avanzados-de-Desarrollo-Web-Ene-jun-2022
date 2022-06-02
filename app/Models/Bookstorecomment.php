<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Bookstore; 
use App\Models\User;

class Bookstorecomment extends Model
{
    use HasFactory;
    
    protected $table = "bookstorecomments";

    protected $fillable = [
        'id',
        'Review',
        'user_id',
        'bookstore_id'
    ];
    
    public function user() {

        return $this->hasMany(User::class, 'user_id');
    }

    public function bookstore() {

        return $this->hasMany(Bookstore::class, 'bookstore_id');
    }
}
