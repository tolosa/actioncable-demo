class SessionsController < ApplicationController
  def new; end

  def create
    @username = params[:username]
    if @username.length > 2
      cookies[USERNAME_COOKIE] = @username
      redirect_to chat_path
    else
      flash.now.alert = 'You need to enter a valid username, at least 3 characters long'
      render :new
    end
  end

  def destroy
    cookies.delete USERNAME_COOKIE
    redirect_to new_session_path, notice: 'You where signed out'
  end
end
