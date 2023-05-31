class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :welcome ]

  def home
    @workouts = Workout.all
    # The `geocoded` scope filters only flats with coordinates
    @markers = @workouts.geocoded.map do |workout|
      {
        lat: workout.latitude,
        lng: workout.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {workout: workout}),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end
end
