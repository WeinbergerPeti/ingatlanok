<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ingatlanok extends Model
{
    use HasFactory;

    protected $fillable = [
        'id',
        'kategoria',
        'leiras',
        'hirdetes_datuma',
        'tehermentes',
        'ar',
        'kep_URL'
    ];
}
