<?php

use Illuminate\Database\Seeder;
use App\Cat;
use App\Img_cat;

class Img_catsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(Img_cat::class, 30) -> create();

    }
}
