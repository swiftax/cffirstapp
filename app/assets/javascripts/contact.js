$(document).ready(function() {
  $('input.submit').on('click', function() {
    var comment;
    console.log('clicked');
    comment = $('textarea.form-control').val();
    console.log(comment);
    $('#visible-comment').html(comment);
    return false;
  });
  $('textarea.form-control').css('background-color', 'pink');
  $('textarea.form-control').on('keyup', function() {
    var charCount;
    console.log('keyup happened!');
    charCount = $('textarea.form-control').val().length;
    console.log(charCount);
      $('#charCount').html(charCount);
    if (charCount <= 10) {
      $('#charCount').css('color', 'black').text('Ok, you need to write more than this.');
    } else if (charCount > 10 && charCount < 120 ) {
    	$('#charCount').css('color', 'black').text('Keep writing. This is a good story.');
    } else {
      $('#charCount').css('color', 'black').text("Too much! Reading this long message will tire me out. I think I'm ready for bed! Eliminate a few words. Thank you and good night.");
    };
  });
});
