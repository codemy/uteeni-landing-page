$( document ).ready(function() {

  var slideHeading = function() {
    var $headingContainer = $("#heading-container");
    var y_scroll_pos = window.pageYOffset;
    var $coverHeight = $('#cover').height();
    if (y_scroll_pos > $coverHeight) {
      $headingContainer.stop().hide();
      pinEffects();
    } else {
      $headingContainer.fadeIn(1000);
    }
  }
  
  slideHeading()
  $(window).on('scroll', slideHeading);


  function pinEffects() {

  }

});