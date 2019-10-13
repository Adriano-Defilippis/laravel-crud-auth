<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Img_cat;

class Cat extends Model
{
    protected $fillable =[
      "name",
      "race",
      "img_cat_id",
      "user_id"
    ];

    public function imgCat(){

      return $this -> belongsTo(Img_cat::class);
    }

    public function user(){

      return $this -> belongsTo(User::class);
    }

    public function posts(){

      return $this -> hasMany(Post::class);
    }
}
