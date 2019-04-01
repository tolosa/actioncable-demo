class ChatChannel < ApplicationCable::Channel
  CHANNEL_NAME = 'chat_channel'

  def subscribed
    stream_from CHANNEL_NAME
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    message = Message.create! username: username, text: data['message']
    ActionCable.server.broadcast CHANNEL_NAME, message_html: render_message(message)
  end

  private

  def render_message(message)
    ApplicationController.renderer.render partial: 'chat/message', locals: { message: message }
  end
end
