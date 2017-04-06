$(document).ready(function () {
  $('.dropdown-toggle').dropdown();

  $(".dropdown-item").click(function(){
    $('#dropdownMenuButton').html($(this).text());
  });
});
