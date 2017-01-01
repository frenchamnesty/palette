class ImageController < ApplicationController

  def index
    @images = Image.all
  end

  def new
    @image = Image.new
  end


  def create
    @place = Place.find(params[:place_id])
    @place.images.create(image_params.merge(user: current_user))
    if @image.save
      redirect_to place_path(@place), notice: "Your image #{@image.name} has been uploaded!"
    else 
      render "new"
    end
  end 

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to place_images_path, notice: "Image has been deleted."
  end

  private

    def image_params
      params.require(:image).permit(:caption, :attachment)
    end 

end
