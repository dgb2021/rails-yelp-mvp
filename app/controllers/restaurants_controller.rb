class RestaurantsController < ApplicationController
  
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
      if @restaurant.save
        redirect_to restaurant_path(@restaurant), notice: "Successfully saved"
      else
        render :new
      end
  end

  def edit
  end

  def update
    if @restaurant.update(restaurant_params)
      redirect_to restaurant_path, notice: "Successfully updated"
    else
      render :edit
    end
  end

  def destroy
    @restaurant = @restaurants.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
