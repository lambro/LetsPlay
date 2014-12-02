class CreateConsoleUsers < ActiveRecord::Migration
  def change
    create_table :console_users do |t|
      t.integer :user_id
      t.integer :console_id
      t.string :gamer_tag

      t.timestamps
    end
  end
end
