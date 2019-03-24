class ChatController < ApplicationController
  def index
    @messages = Message.order :id
  end
end
