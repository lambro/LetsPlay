class UserSession < ActiveRecord::Base
  attr_accessible :accepted, :gamingsession_id, :user_id

  belongs_to :gamingsession
  belongs_to :user
end
