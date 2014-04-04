(function() {
  $(function() {
    return $(".flash .close").click(function() {
      var $el;
      $el = $(this).parent(".flash");
      $el.addClass('flash--hide');
      setTimeout(function() {
        $el.hide();
        return this;
      }, 200);
      return this;
    });
  });

}).call(this);
