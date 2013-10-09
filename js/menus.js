  $(document).ready(function() {
        $(document).ready(function() {
          $('#view_selection a').click(function() {
            var view_type = $(this).attr('id');
            $('#view_selection a').removeClass('active');
            $(this).toggleClass('active');
            toggle_view(view_type);
            return false;
          });
        });
    });