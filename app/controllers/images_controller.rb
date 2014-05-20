class ImagesController < ApplicationController
  def create
    @gallery = Gallery.find image_params[:gallery_id]
    @image = Image.new image_params

    if @image.save
      redirect_to @gallery
    end
  end

  private

  def image_params
    params.require(:image).permit :filepicker_url, :gallery_id
  end

end
