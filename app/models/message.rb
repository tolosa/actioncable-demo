class Message < ApplicationRecord
  validates :text, :username, presence: true

  def avatar(size: '50x50')
    "https://robohash.org/#{URI.encode(username)}?set=set4&bgset=bg2"
  end
end
