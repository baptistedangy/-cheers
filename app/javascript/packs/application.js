// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
import { showStarRating } from '../plugins/init_star_rating';


import { initMapbox } from '../plugins/init_mapbox';
// import { initSelect2 } from '../components/init_select2';
import { initSelect2 } from '../plugins/init_select2';
import { insertShow } from '../components/insert_show';
import { insertRate } from '../components/insert_rate';
// import { pageScrolling } from '../components/loading';

// window.transitionToPage = function(href) {
//     document.querySelector('body').style.transform = "translate(0px, -100vh)"
//     setTimeout(function() {
//         window.location.href = href
//     }, 500)
// }
const changeSizeInX = () => {
  $(window).on("load",function(){
    $(".loader-wrapper").fadeOut("slow");
  });
};

document.addEventListener('turbolinks:load', () => {
  initSelect2();
  initMapbox();
  changeSizeInX();
  // initStarRating();
  insertShow();
  insertRate();
  // pageScrolling();
})

