class CreateWorkouts < ActiveRecord::Migration[7.0]
  def change
    create_table :workouts do |t|
      t.text :title
      t.references :user, null: false, foreign_key: true
      t.date :event_date
      t.time :start_time
      t.time :end_time
      t.text :location
      t.boolean :recurring
      t.text :description
      t.boolean :cancelled
      t.datetime :cancelled_at

      t.timestamps
    end
  end
end
