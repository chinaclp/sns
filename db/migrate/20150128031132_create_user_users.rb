class CreateUserUsers < ActiveRecord::Migration
  def change
    create_table :user_users do |t|

      t.timestamps

      t.integer :user_id
      t.integer :user_id
      t.integer :grade
    end
  end
end
