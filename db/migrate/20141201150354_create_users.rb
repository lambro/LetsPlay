class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :postcode
      t.datetime :dob
      t.text :profile_picture

      t.timestamps
    end
  end
end
