$( document ).ready(function() {

  var $pin = $(".pin");
  var $pinIcon = $pin.find(".pin-icon");
  var $pinText = $pin.find("figcaption");
 
  $.each($pinIcon, function(i, el) {

    $(el).css({
          top: '-200px'
      });

    setTimeout(function() {
      $(el).animate({
        opacity: 1,
        top: '0px'
    }, 500, 'easeOutBounce');
    }, 100 + (i * 500));

  })

  $.each($pinText, function(i, el) {

    setTimeout(function() {
      $(el).animate({
        opacity: 1
    }, 500, 'linear');
    }, 200 + (i * 500));

  })

});