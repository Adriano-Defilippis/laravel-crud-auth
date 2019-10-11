<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Model;
use Faker\Generator as Faker;
use App\ Img_cat;
use App\Cat;

$factory->define(Img_cat::class, function (Faker $faker) {




    return [
        "src" => $faker -> unique() -> word
    ];
});
