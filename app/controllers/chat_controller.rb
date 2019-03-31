class ChatController < ApplicationController
  before_action :check_session

  def index
    @messages = Message.order :id
  end

  private

  def check_session
    redirect_to new_session_path \
      unless logged_in? # TODO: add flash message
  end
end
