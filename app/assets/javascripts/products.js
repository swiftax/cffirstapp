$(document).ready ->
  rows = $('.my-row')
  i = 0
  while i < rows.length
    if i % 2 == 0
      $(rows[i]).css 'background-color', 'pink'
    ++i
  return

  $(document).ready ->
  availableTags = [
    'ActionScript'
    'AppleScript'
    'Asp'
    'BASIC'
    'C'
    'C++'
    'Clojure'
    'COBOL'
    'ColdFusion'
    'Erlang'
    'Fortran'
    'Groovy'
    'Haskell'
    'Java'
    'JavaScript'
    'Lisp'
    'Perl'
    'PHP'
    'Python'
    'Ruby'
    'Scala'
    'Scheme'
  ]
  $('#tags').autocomplete source: availableTags
  return