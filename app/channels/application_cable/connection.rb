module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :username

    def connect
      self.username = cookies[ApplicationController::USERNAME_COOKIE]
    end
  end
end
