class Console < ActiveRecord::Base
  attr_accessible :console_image, :console_logo, :name

  has_many :games
  has_and_belongs_to_many :users
  has_many :gamingsessions
  has_many :consoles_users, class_name: "ConsolesUsers"
  has_many :users, through: :consoles_users
  
end
