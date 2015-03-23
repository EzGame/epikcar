// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
/* Scroll handler */
$(document).ready(function () {
  var $window = $(window);
  var $header = $('#header');
  $window.scroll(function () {
    $position = $window.scrollTop();
    if ($position <= 50) {
      $header.removeClass('fadeOut', '');
      $header.addClass('fadeIn');
    } else if ($position > 0 && !$header.hasClass('fadeOut')) {
      $header.removeClass('fadeIn', '');
      $header.addClass('fadeOut');
    }
  });
});