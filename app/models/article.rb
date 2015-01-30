class Article < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :title, :summary, :content, :user_id
  belongs_to :user
end
