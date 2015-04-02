$( document ).ready(function() {

  var $userForm = $('.user-form');
  var $businessForm = $('#business-form');
  var $contactForm = $('#contact-form');
  var url = '/'; // input url here


  $($userForm).on('click', '.submit-btn', function() {
    $userForm.find('.submit-message').fadeIn();
  });

  $($businessForm).on('click', '.submit-btn', function() {
    $businessForm.find('.submit-message').fadeIn();
  });

  $($contactForm).on('click', '.submit-btn', function() {
    $contactForm.find('.submit-message').fadeIn();
  });

  function ajaxCall() {
    event.preventDefault();
    var currentForm = $(this);
    $(this).find('.submit-message').fadeIn();
    // $.ajax(url, {
    //   type: 'POST',
    //   data: formElement.serialize(),
    //   success: function(results) {
    //     formElement.hide();
    //   }
    // });
  }

});