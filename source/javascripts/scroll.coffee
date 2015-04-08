$ ->
  $cover = $('#cover')
  $coverContainer = $cover.find('.cover__container')

  #
  # slide cover heading
  #
  slideHeading = ->
    if (window.pageYOffset > $cover.height())
      $coverContainer.stop().hide()
    else
      $coverContainer.fadeIn(1000)

  $(window).on('load', slideHeading)
  $(window).on('scroll', slideHeading)

  #
  # signup
  #
  $coverContainer.find('.btn-signup').on 'click', (e) ->
    e.preventDefault()
    $('body').animate
      scrollTop: $('#sign_up').offset().top
    , 1000