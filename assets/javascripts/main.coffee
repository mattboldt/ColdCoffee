$ ->

  #
  # Global anchor default override
  #
  $("a[href=#]").click (e) ->
    e.preventDefault()

  #
  # Flash messages
  #
  $(".flash .flash--close").click ->
    $el = $(this).parent(".flash")
    $el.addClass('flash--hide')
    setTimeout ->
      $el.hide()
      this
    , 200
    this