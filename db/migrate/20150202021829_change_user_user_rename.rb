class ChangeUserUserRename < ActiveRecord::Migration
  def change
    rename_column :user_users, :user_id, :fan_id
  end
end
