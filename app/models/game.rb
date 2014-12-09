class Game < ActiveRecord::Base
  attr_accessible :console_id, :genre, :image, :logo, :title

  belongs_to :console
  has_and_belongs_to_many :users
  
  has_many :user_games, class_name: "UserGames"
  has_many :users, through: :user_games

end
