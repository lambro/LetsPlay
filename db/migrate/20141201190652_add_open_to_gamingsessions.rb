class AddOpenToGamingsessions < ActiveRecord::Migration
  def change
    add_column :gamingsessions, :open, :boolean
  end
end
