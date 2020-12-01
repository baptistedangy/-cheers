import "jquery-bar-rating";

import $ from 'jquery'; // <-- if you're NOT using a Le Wagon template (cf jQuery section)

const initStarRating = () => {
  console.log(document.querySelector('#rating_note'))
  $('#rating_note').barrating({
    theme: 'css-stars'
  });
};

export { initStarRating };
