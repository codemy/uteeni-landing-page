$ ->
  $('.pin__percentage').each ->
    $(@).prop('counter', 0).animate({
      counter: $(@).text()
    }, {
      duration: 2000,
      easing: 'swing',
      step: (now) ->
        $(@).text(Math.ceil(now))
    })