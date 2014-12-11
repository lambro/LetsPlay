class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :games, through: :user_games
  has_many :friendships, class_name: "Friendships"
  has_many :consoles_users, class_name: "ConsolesUsers"
  has_many :users, through: :friendships
  has_many :consoles, through: :consoles_users
  has_many :user_games, class_name: "UserGames"

  has_many :gamingsessions, through: :user_sessions
  has_many :user_sessions

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :dob, :postcode, :profile_picture, :forem_admin
  # attr_accessible :title, :body

  mount_uploader :profile_picture, ProfilePictureUploader

  def forem_name
    name
  end
  
end
