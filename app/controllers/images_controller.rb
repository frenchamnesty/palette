class ImageController < ApplicationController

  before_action :authenticate_user! 

  def create
    @place = Place.find(params[:id])
    #@place.images.create(params[:image_params, :id])
    @place.images.create(image_params(image: current_image)
    redirect_to place_path(@place)
  end 

  private

    def image_params
      params.require(:image).permit(:attachment, :caption)
    end 

end
