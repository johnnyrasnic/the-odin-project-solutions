$(document).ready(function () {
  $('button').click(function() {
    $('#container').remove();
    createGrid();
  });

  function createGrid() {
    var height = prompt("Enter the height for the etch-a-sketch (between 1 and 50)");
    if (height < 1 || height > 50) {
      var height = prompt("You can only have values between 1 and 50")
    }

    var width = prompt("Enter the width for the etch-a-sketch (between 1 and 50)");
    if (width < 1 || width > 50) {
      var width = prompt("You can only have values between 1 and 50");
    }

      $('body').prepend('<div id="container"></div>')
    for (i = 0; i < height; i++) {
      $('#container').append("<ul class='square-height'/>");
    }
    for (i = 0; i < width; i++) {
      $('ul').append("<li class='square-width'/>");
  }
  
  $('.square-width').mouseenter(function() {
    var x = Math.floor((Math.random() * 255) + 1);
    x.toString();
    var y = Math.floor((Math.random() * 255) + 1);
    y.toString();
    var z = Math.floor((Math.random() * 255) + 1);
    z.toString();
    var rgb = "rgb(" + x + "," + y + "," + z +")";
    $(this).css('background-color', rgb);
    $(this).removeClass("square-width");
  });
  }
});
