$ ->
  $('.percentage-count').each ->
    $(@).prop('Counter',0).animate({
      Counter: $(@).text()
    }, {
      duration: 2000,
      easing: 'swing',
      step: (now) ->
        $(@).text(Math.ceil(now))
    })