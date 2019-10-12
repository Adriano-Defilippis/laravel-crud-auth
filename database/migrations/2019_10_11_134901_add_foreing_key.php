<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddForeingKey extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {

      Schema::table('cats', function (Blueprint $table) {
      $table->bigInteger('img_cat_id') -> unsigned();
      $table->foreign('img_cat_id', 'catImg') //relationPostCategory
            -> references('id')
            -> on('img_cats');
          });

      Schema::table('cats', function (Blueprint $table) {
      $table->bigInteger('user_id') -> unsigned();
      $table->foreign('user_id', 'userCat') //relation
            -> references('id')
            -> on('users');
          });

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {

      Schema::table('cats', function (Blueprint $table) {

        $table -> dropForeign('catImg');
        $table -> dropColumn('img_cat_id');
      });

      Schema::table('cats', function (Blueprint $table) {

        $table -> dropForeign('userCat');
        $table -> dropColumn('user_id');
      });

    }
}
