$(function() {
  // hook up the projects search box to refresh projects
  // on every keypress (specifically: keyup)
  $('.users_search').on('keyup', 'input', function() {
    $.get(
      $('.users_search').attr('action'),
      $('.users_search').serialize(), // {"q": "hello"}
      function(data) {
        $('#users').html(data);
      },
      'html'
    );
    
    return false;
  });

  // hook up the pagination links to refresh projects
  $('#index').on('click', '.pagination a', function() {
    $.get(
      this.href,
      null, // {"q": "hello"}
      function(data) {
        $('#index').html(data);
      },
      'html'
    );

    return false;
  });
});