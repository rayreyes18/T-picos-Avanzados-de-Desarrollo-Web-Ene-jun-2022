<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\User;

class Bookstore extends Model
{
    use HasFactory;

    protected $table = "bookstores";

    protected $fillable = [
        'id',
        'Name',
        'Mandated',
        'Address',
        'City',
        'Phone',
        'Mail',
        'Web',
        'Review',
        'Image',
        'user_id'
    ];

    public function user() {

        return $this->hasMany(User::class, 'user_id');
    }
}
