(function() {
  $(function() {
    $("a[href=#]").click(function(e) {
      return e.preventDefault();
    });
    $(".flash .flash--close").click(function() {
      var $el;
      $el = $(this).parent(".flash");
      $el.addClass('flash--hide');
      setTimeout(function() {
        $el.hide();
        return this;
      }, 200);
      return this;
    });
    return $(".dropdown-toggle-anchor").click(function() {
      if ($(this).parent(".dropdown-toggle").hasClass("dropdown-toggle--active")) {
        return $(this).parent(".dropdown-toggle").removeClass("dropdown-toggle--active");
      } else {
        return $(this).parent(".dropdown-toggle").addClass("dropdown-toggle--active");
      }
    });
  });

}).call(this);
