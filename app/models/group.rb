class Group < ActiveRecord::Base
  attr_accessible :created_by, :max_age, :min_age, :title
end
