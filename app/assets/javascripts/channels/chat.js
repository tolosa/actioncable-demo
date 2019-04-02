App.chat = App.cable.subscriptions.create('ChatChannel', {
  connected: function() {
    // Called when the subscription is ready for use on the server
  },

  disconnected: function() {
    // Called when the subscription has been terminated by the server
  },

  received: function(data) {
    const $message = $(data['message_html']);
    $message.hide();
    $container = $('#messages-container');
    $container.find('.no-messages').hide();
    $container.append($message);
    $message.slideDown(150, () => {
      $container.scrollTop($container.prop('scrollHeight'));
    });
  },

  speak: function(message) {
    return this.perform('speak', { message });
  }
});
