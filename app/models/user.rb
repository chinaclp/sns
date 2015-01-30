class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable,
    :confirmable, :lockable

  before_create :confrim   
  def confrim  
    self.confirmed_at = Time.now
  end

  has_many :articles
  has_many :topics

  has_many :user_users
  has_many :users, :through => :user_users, :source => :user

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :phone
  # attr_accessible :title, :body
end
