class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :welcome ]

  def home
    @workouts = Workout.all
    # The `geocoded` scope filters only flats with coordinates
    @markers = @workouts.geocoded.map do |workout|
      {
        lat: workout.latitude,
        lng: workout.longitude
      }
    end
  end
end
