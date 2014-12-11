class RenameCreatedByColumnToUserId < ActiveRecord::Migration
  def change
    rename_column :gamingsessions, :created_by, :user_id
  end 
end
