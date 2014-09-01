//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks

function scrollTo($el) {
  $("html, body").animate({scrollTop: $el.offset().top}, 300);
}
