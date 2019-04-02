class SessionsController < ApplicationController
  def new; end

  def create
    cookies[USERNAME_COOKIE] = params[:username]
    redirect_to chat_path
  end

  def destroy
    cookies.delete USERNAME_COOKIE
    redirect_to new_session_path, notice: 'You where signed out'
  end
end
