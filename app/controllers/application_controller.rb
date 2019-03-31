class ApplicationController < ActionController::Base
  USERNAME_COOKIE = 'username'.freeze

  helper_method :current_username, :logged_in?

  def current_username
    cookies[USERNAME_COOKIE]
  end

  def logged_in?
    current_username.present?
  end
end
