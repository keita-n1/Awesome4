class CoordinatesController < ApplicationController
  def index
  end

  def new
    @coordinate = Coordinate.new
  end

  def create
    @coordinate = Coordinate.new(coordinate_params)
    @coordinate.save
    redirect_to root_path
  end

  private

  def coordinate_params
    params.require(:coordinate).permit(:image, :item_detail).merge(user_id: current_user.id)
  end
  
end
