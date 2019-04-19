# alert('Hello World');

message_appender = (content) ->
  $("#messages-table").append content

$(document).on 'turbolinks:load', ->
  message_appender("Nirvana");

