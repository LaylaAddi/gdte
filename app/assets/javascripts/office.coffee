jQuery ->
  $('#office-driver-notes-link').click (event) ->
    event.preventDefault()
    $('#office-notes-on-driver').fadeToggle()
    $('#office_driver_comment_body').focus()