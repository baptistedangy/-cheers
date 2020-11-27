import $ from 'jquery';
import 'select2';



const initSelect2 = () => {
  function formatMeal (meal) {
    if (!meal.id) {
      return meal.text;
    }
    const baseURL = "";
    const $meal = $(
      `<span><img src="${meal.element.dataset.photo}" class="img-flag" />${meal.element.value}</span>`
    );
    return $meal;
  }

  $('.select2').select2({
    templateResult: formatMeal
  });

  $(".js-example-placeholder-single").select2({
      placeholder: "Select your meal",
      allowClear: true
  });

};

export { initSelect2 };



