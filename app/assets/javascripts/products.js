$(document).ready ->
  rows = $('.my-row')
  i = 0
  while i < rows.length
    if i % 2 == 0
      $(rows[i]).css 'background-color', 'pink'
    ++i
  return