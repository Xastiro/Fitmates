class CreateWorkoutTags < ActiveRecord::Migration[7.0]
  def change
    create_table :workout_tags do |t|
      t.string :workout_references
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
