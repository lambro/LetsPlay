class Friendship < ActiveRecord::Base
  attr_accessible :accepted, :usera_id, :userb_id
  belongs_to :usera, class_name: "User"
  belongs_to :userb, class_name: "User"
end
