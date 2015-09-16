# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ()->
    document.set_calbacks = () ->
        $('.form_view input[type=submit]').click ()->
            $('.form_view').hide()
            $('.ajax_message').html('Загрузка')
    document.set_calbacks()