$ ->
  $pin = $(".pin")
  $pinIcon = $pin.find(".pin__icon")
  $pinText = $pin.find("figcaption")
 
  $.each $pinIcon, (i, el) ->
    $(el).css
      top: '-200px'

    setTimeout ->
      $(el).animate({
        opacity: 1,
        top: '0px'
      }, 500, 'easeOutBounce')
    , 100 + (i * 500)

  $.each $pinText, (i, el) ->
    setTimeout ->
      $(el).animate({
        opacity: 1
      }, 500, 'linear')
    , 200 + (i * 500)