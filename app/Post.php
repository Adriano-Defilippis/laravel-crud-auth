<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
  protected $fillable =[
    "title",
    "text",
    "cat_id",
    "img_cat_id"
  ];

  public function cat(){

    return $this -> belongsTo(Cat::class);
  }

  public function imgCatPost(){

    return $this -> belongsTo(Img_cat::class);
  }
}
