$( document ).ready(function() {

  var $userForm = $('.user-form');
  var $businessForm = $('#business-form');
  var $contactForm = $('#contact-form');
  var url = '/'; // input url here


  $($userForm).on('click .submit-btn', ajaxCall);
  $($businessForm).on('click .submit-btn', ajaxCall);
  $($contactForm).on('click .submit-btn', ajaxCall);

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