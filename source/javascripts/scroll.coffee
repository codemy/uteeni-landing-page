$ ->
  slideHeading = ->
    $headingContainer = $("#heading-container")
    y_scroll_pos = window.pageYOffset
    coverHeight = $('#cover').height()

    if (y_scroll_pos > coverHeight)
      $headingContainer.stop().hide()
    else
      $headingContainer.fadeIn(1000)
  
  slideHeading()
  $(window).on('scroll', slideHeading)