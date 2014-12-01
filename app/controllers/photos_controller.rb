class PhotosController < ApplicationController
  require 'fastimage'

  def index
  end

  def engagement
    images = Dir.glob("app/assets/images/photos/engagement/*.jpg")
    @images_large = []
    @images_regular = []

    images.each do |image|
      if FastImage.size(image)[1] > 1000
        @images_large.push(image)
      else
        @images_regular.push(image)
      end
    end
  end
end
