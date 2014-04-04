$ ->

  $(".flash .close").click ->
    $el = $(this).parent(".flash")
    $el.addClass('flash--hide')
    setTimeout ->
      $el.hide()
      this
    , 200
    this