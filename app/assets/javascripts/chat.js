// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {
  const $field = $('#message_field');
  const $btnSend = $('#btn-send');

  function sendTypedMessage() {
    App.chat.speak($field.val());
    $field.val('');
    updateSendButtonStatus();
  }

  function updateSendButtonStatus() {
    $btnSend.prop('disabled', $field.val().length == 0);
  }

  $field
    .on('input', updateSendButtonStatus)
    .on('keypress', event => {
      if(event.keyCode == 13) {
        sendTypedMessage();
        event.preventDefault();
      }
    });

  $btnSend.click(sendTypedMessage);
});
