class SetDefaultAttributeOnAcceptedColumn < ActiveRecord::Migration
  def change
    change_column :user_sessions, :accepted, :boolean, :default => false
  end
end
