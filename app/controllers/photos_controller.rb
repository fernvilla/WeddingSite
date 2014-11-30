class PhotosController < ApplicationController
  def index
    @images = Dir.glob("app/assets/images/photos/engagement/*.jpg")
  end
end
