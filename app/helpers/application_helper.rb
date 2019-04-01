module ApplicationHelper
  def avatar_image(username, size: '50x50')
    image_tag "//robohash.org/#{URI.encode(username)}?set=set4&bgset=bg2", size: size
  end
end
