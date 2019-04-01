class Message < ApplicationRecord
  validates :text, :username, presence: true
end
