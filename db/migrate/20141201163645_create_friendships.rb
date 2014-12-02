u.class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.integer :usera_id
      t.integer :userb_id
      t.boolean :accepted

      t.timestamps
    end
  end
end
