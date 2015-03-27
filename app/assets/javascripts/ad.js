$(document).ready(function() {
  $('.slick').slick({
    centerMode: true,
    slidesToShow: 3,
    slidesToScroll: 3,
    autoplay: true,
    autoplaySpeed: 10000,
    variableWidth: true
  });

  $('.show-button').click(function() {
    $(this).parent().addClass('active');
  });
});