module ApplicationHelper
  FLASH_CLASSES = { notice: 'alert-success', alert: 'alert-danger' }.with_indifferent_access.freeze

  def flash_messages
    capture do
      flash.each do |type, message|
        concat tag.div message, class: ['alert', FLASH_CLASSES[type]]
      end
    end
  end

  def avatar_image(username, size: 50)
    image_tag "//robohash.org/#{URI.encode(username)}?set=set4&bgset=bg2", width: size, height: size
  end
end
