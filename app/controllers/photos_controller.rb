class PhotosController < ApplicationController
  def index
  end

  def engagement
    @images = Dir.glob("app/assets/images/photos/engagement/*.jpg")
  end
end
