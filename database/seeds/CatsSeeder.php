<?php

use Illuminate\Database\Seeder;
use App\Cat;
use App\Img_cat;

class CatsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {


        factory(Cat::class, 30) -> create();
        //   -> make()
        //   -> each(function($cat) {
        //
        // $img_cat = Img_cat::inRandomOrder() -> first();
        //
        //
        //
        // $cat -> imgCat() -> associate($img_cat);
        //
        // $cat -> save();

    // });


  }
}
