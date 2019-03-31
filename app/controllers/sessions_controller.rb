class SessionsController < ApplicationController
  def new; end

  def create
    cookies[USERNAME_COOKIE] = params[:username]
    redirect_to chat_path # TODO: add flash message
  end

  def destroy
    cookies.delete USERNAME_COOKIE
    redirect_to new_session_path # TODO: add flash message
  end
end
