<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Img_cat extends Model
{
    protected $fillable=[
      "src"
    ];

    public function cat(){

      return $this -> hasOne(Cat::class);
    }

    public function posts(){

      return $this -> hasMany(Post::class);
    }
}
