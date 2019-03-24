class ChatChannel < ApplicationCable::Channel
  CHANNEL_NAME = 'chat_channel'

  def subscribed
    stream_from CHANNEL_NAME
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    ActionCable.server.broadcast CHANNEL_NAME, message: data['message']
  end
end
