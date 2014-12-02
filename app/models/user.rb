class User < ActiveRecord::Base
  attr_accessible :dob, :email, :name, :postcode, :profile_picture
end
