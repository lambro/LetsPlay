class Game < ActiveRecord::Base
  attr_accessible :console_id, :genre, :image, :logo, :title
end
