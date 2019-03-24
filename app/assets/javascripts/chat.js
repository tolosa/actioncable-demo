// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).on('keypress', '#message_field', event => {
  if(event.keyCode == 13) {
    App.chat.speak(event.target.value);
    event.target.value = '';
    event.preventDefault();
  }
});
