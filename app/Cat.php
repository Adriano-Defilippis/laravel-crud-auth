<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Img_cat;

class Cat extends Model
{
    protected $fillable =[
      "name",
      "race",
      "img_cat_id"
    ];

    public function imgCat(){

      return $this -> belongsTo(Img_cat::class);
    }
}
