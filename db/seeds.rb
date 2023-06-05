# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Deleting current Database data'

Workout.destroy_all
User.destroy_all

puts 'Database data has been deleted'

puts 'Creating Users'

matthias = User.create(email: 'matthias.seeburger@hotmail.fr', password: '123456')

puts 'Users have been generated'

puts 'Creating Workouts'

my_first_workout = Workout.create(title: "Squats in the park",
                                  user_id: matthias.id,
                                  event_date: Date.new(2023,06,30),
                                  start_time: DateTime.new(2023, 6, 30, 18, 0, 0),
                                  end_time: DateTime.new(2023, 6, 30, 19, 0, 0),
                                  location: "1 rue de paris",
                                  recurring: false,
                                  description: "")


puts 'Workout have been generated'
