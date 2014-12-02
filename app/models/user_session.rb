class UserSession < ActiveRecord::Base
  attr_accessible :accepted, :gamingsession_id, :user_id
end
