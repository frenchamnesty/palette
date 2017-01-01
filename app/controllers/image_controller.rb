class ImageController < ApplicationController

  before_action :authenticate_user! 

  def index
    @images = Image.all
  end

  def new
    @image = Image.new
  end


  def create
    @image.create(image_params.merge(user: current_user))
    redirect_to place_path(@place)
  end 

  private

    def image_params
      params.require(:attachment).permit(:caption)
    end 

end
