App.chat = App.cable.subscriptions.create('ChatChannel', {
  connected: function() {
    // Called when the subscription is ready for use on the server
  },

  disconnected: function() {
    // Called when the subscription has been terminated by the server
  },

  received: function(data) {
    $('#messages-container').append(data['message_html']);
  },

  speak: function(message) {
    return this.perform('speak', { message });
  }
});
