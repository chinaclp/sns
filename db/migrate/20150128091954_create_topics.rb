class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|

      t.timestamps
      t.integer :user_id
      t.string :title
      t.text :content

    end
  end
end
