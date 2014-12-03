class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :dob, :email, :name, :postcode, :profile_picture

  has_many :gamingsessions, through: :user_session
  has_many :user_session
  has_and_belongs_to_many :consoles
  has_many :users, through: :friendships
  has_many :friendships, class_name: "Friendships"
  has_and_belongs_to_many :groups
  has_and_belongs_to_many :games
  has_many :consoles_users, class_name: "ConsolesUsers"
  has_many :consoles, through: :consoles_users
end
