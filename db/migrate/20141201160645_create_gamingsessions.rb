class CreateGamingsessions < ActiveRecord::Migration
  def change
    create_table :gamingsessions do |t|
      t.string :title
      t.integer :created_by
      t.boolean :online
      t.datetime :min_age_limit
      t.datetime :max_age_limit
      t.text :description
      t.datetime :gsdate
      t.boolean :active
      t.string :location_name
      t.string :postcode
      t.integer :console_id1
      t.integer :console_id2
      t.integer :console_id3

      t.timestamps
    end
  end
end
