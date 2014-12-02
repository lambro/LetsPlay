class Game < ActiveRecord::Base
  attr_accessible :console_id, :genre, :image, :logo, :title

  belongs_to :console
  has_and_belongs_to_many :users
  
end
