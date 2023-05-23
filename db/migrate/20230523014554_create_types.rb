class CreateTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :types do |t|
      t.references :workout, null: false, foreign_key: true
      t.text :title

      t.timestamps
    end
  end
end
