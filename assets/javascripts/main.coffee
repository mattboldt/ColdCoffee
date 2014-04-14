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

  $(".dropdown-toggle-anchor").click ->
    if $(this).parent(".dropdown-toggle").hasClass("dropdown-toggle--active")
      $(this).parent(".dropdown-toggle").removeClass("dropdown-toggle--active")
    else
      $(this).parent(".dropdown-toggle").addClass("dropdown-toggle--active")
