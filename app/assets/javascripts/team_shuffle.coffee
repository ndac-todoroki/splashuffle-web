# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  clip = new Clipboard '#d_clip_button'
  #return

  $('#d_clip_button').on 'click', ->
    $('#d_clip_button').removeClass 'primary'
    $('#d_clip_button').addClass 'success hollow'
    $('#d_clip_button').text 'コピーしました'
    #return