class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.string :genre
      t.integer :console_id
      t.text :logo
      t.text :image

      t.timestamps
    end
  end
end
