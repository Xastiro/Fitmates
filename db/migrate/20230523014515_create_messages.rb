class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.references :user, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.text :message
      t.datetime :sent_time

      t.timestamps
    end
  end
end