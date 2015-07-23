$(document).ready(function() {
  $('input.submit').on('click', function() {
    var comment;
    console.log('clicked');
    comment = $('.contact-form').val();
    console.log(comment);
    $('#visible-comment').html(comment);
    return false;
  });
  $('.contact-form').css('background-color', 'pink');
  $('.contact-form').on('keyup', function() {
    var charCount;
    console.log('keyup happened!');
    charCount = $('.contact-form').val().length;
    console.log(charCount);
      $('#charCount').html(charCount);
    if (charCount <= 10) {
      $('#charCount').css({"color": "blue"}).text('Ok, you need to write more than this.');
    } else if (charCount > 10 && charCount < 120 ) {
    	$('#charCount').css({"color": "#000"}).text('Keep writing. This is a good story.');
    } else {
      $('#charCount').css({"color": "red"}).text("Too much! Reading this long message will tire me out. I think I'm ready for bed! Eliminate a few words. Thank you and good night.");
    };
  });
});
