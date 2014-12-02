class Group < ActiveRecord::Base
  attr_accessible :created_by, :max_age, :min_age, :title

  has_and_belongs_to_many :users
end
