class User < ActiveRecord::Base
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
