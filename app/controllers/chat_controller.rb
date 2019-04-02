class ChatController < ApplicationController
  before_action :check_session

  def index
    @messages = Message.order :id
  end

  private

  def check_session
    redirect_to new_session_path, alert: 'You need to be logged in' \
      unless logged_in?
  end
end
