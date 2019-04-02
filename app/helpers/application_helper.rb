module ApplicationHelper
  def avatar_image(username, size: 50)
    image_tag "//robohash.org/#{URI.encode(username)}?set=set4&bgset=bg2", width: size, height: size
  end
end
