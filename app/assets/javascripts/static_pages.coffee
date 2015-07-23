$(document).ready ->
  $('input.submit').on 'click', ->
    console.log 'clicked'
    comment = $('textarea.form-control').val()
    console.log comment
    $('#visible-comment').html comment
    false
  $('textarea.form-control').css 'background-color', 'pink'
  $('textarea.form-control').on 'keyup', ->
    console.log 'keyup happened!'
    charCount = $('textarea.form-control').val().length
    console.log charCount
    $('#charCount').html charCount
    if charCount > 150
      $('#charCount').css('color', 'red').text 'You exceeded the maximum character limit'
    else
      $('#charCount').css 'color', 'black'
    return
  return