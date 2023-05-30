class WorkoutsController < ApplicationController

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(workout_params)
    @workout.save

    redirect_to home_path
  end

  # def update
  #   @restaurant = Restaurant.find(params[:id])
  #   @restaurant.update(restaurant_params)
  #   # No need for app/views/restaurants/update.html.erb
  #   redirect_to restaurant_path(@restaurant)
  # end

  # def destroy
  #   @restaurant = Restaurant.find(params[:id])
  #   @restaurant.destroy
  #   # No need for app/views/restaurants/destroy.html.erb
  #   redirect_to restaurants_path, status: :see_other
  # end

  private

  def workout_params
    params.require(:workout).permit(:title, :event_date, :start_time, :end_time, :location, :recurring, :description)
  end

end
