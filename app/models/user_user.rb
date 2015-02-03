class UserUser < ActiveRecord::Base
  # attr_accessible :title, :body

  attr_accessible :user_id, :fan_id, :grade
  belongs_to :user
  belongs_to :fan, class: 'User', foreign_key: 'fan_id'

end
