# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->
  $('#new_search_form').on 'ajax:success', (event, products, status) ->
    $('tr.product').hide()
    ids = (products.map (p) -> "#product_#{p.id}").join(',')
    $(ids).show()

$(document).ready(ready)
$(document).on('page:load', ready)
