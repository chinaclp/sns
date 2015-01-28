class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|

      t.timestamps

      t.string :title
      t.text :summary
      t.text :content
      t.integer :user_id
    end
  end
end
