class Friendship < ActiveRecord::Base
  attr_accessible :accepted, :usera_id, :userb_id
end
