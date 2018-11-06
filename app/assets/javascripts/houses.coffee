# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('#search').change ->
    val = $('#search option:selected').text().trim()
    if val == '# Bedrooms' or val == '# Bathrooms' or val == 'Square Feet'
      $('#search_name').hide()
      $('#search_range').show()
    else
      $('#search_name').show()
      $('#search_range').hide()
    return
