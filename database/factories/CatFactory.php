<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Model;
use Faker\Generator as Faker;
use App\Cat;

$factory->define(Cat::class, function (Faker $faker) {
    return [

      "name" => $faker -> word,
      "race" => $faker -> sentence(2),
      "img_cat_id" => $faker -> unique() -> biasedNumberBetween(1,30)
    ];
});
