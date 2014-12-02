class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :title
      t.integer :created_by
      t.datetime :min_age
      t.datetime :max_age

      t.timestamps
    end
  end
end
