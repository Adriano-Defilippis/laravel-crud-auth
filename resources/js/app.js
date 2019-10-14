/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');

window.Vue = require('vue');

/**
 * The following block of code may be used to automatically register your
 * Vue components. It will recursively scan this directory for the Vue
 * components and automatically register them with their "basename".
 *
 * Eg. ./components/ExampleComponent.vue -> <example-component></example-component>
 */

// const files = require.context('./', true, /\.vue$/i)
// files.keys().map(key => Vue.component(key.split('/').pop().split('.')[0], files(key).default))

Vue.component('example-component', require('./components/ExampleComponent.vue').default);

/**
 * Next, we will create a fresh Vue application instance and attach it to
 * the page. Then, you may begin adding components to this application
 * or customize the JavaScript scaffolding to fit your unique needs.
 */

const app = new Vue({
    el: '#app',
});

$(document).ready(init);

function init(){

  $(document).on('click', '#new-post-ajax-link', ajaxCreateFormPost);
  $(document).on('click', '#show-post-ajax-link', ajaxShowPostIndex);
}


function ajaxCreateFormPost(){


  $.ajax({

    url: '/post/ajaxcreate',
    method: 'GET',
    data: {
      "img_cat_id" : 2,
    },

    success: function (response){

      $('div.main').html(response);
    },

    error: function(error){

      console.log(error,'errore');
    }
  });
}

function ajaxShowPostIndex(){

  $.ajax({

    url: '/post/ajaxshowpost',
    method: 'GET',
    data: {

    },

    success: function (response){

      $('div.main').html(response);
    },

    error: function(error){

      console.log(error,'errore');
    }
  });
}
