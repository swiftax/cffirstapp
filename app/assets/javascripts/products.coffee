# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

  $(document).ready ->
  $("#product").on("ajax:success", (e, data, status, xhr) ->
    $("#product").append xhr.responseText
  ).on "ajax:error", (e, xhr, status, error) ->
    $("#product").append "<p>ERROR</p>"