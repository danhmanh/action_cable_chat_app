App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->

  disconnected: ->

  received: (data) ->
    unless data.message.blank?
      $("#messages-table").append(data.message)
    scroll_bottom()


$(document).on 'turbolinks:load', ->
  submit_message()
  scroll_bottom()

submit_message = () ->
  $("#message_content").on 'keydown', (event) ->
    if event.keyCode == 13
      $("input").click()
      event.target.value = ""
      event.preventDefault()

scroll_bottom = () ->
  $("#messages").scrollTop($("#messages")[0].scrollHeight)

