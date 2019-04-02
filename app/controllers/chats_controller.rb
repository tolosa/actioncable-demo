class ChatsController < ApplicationController
  before_action :check_session

  def show
    @messages = Message.order :id
  end

  def destroy
    Message.delete_all
    redirect_to chat_path
  end

  private

  def check_session
    redirect_to new_session_path, alert: 'You need to be logged in' \
      unless logged_in?
  end
end
