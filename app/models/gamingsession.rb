class Gamingsession < ActiveRecord::Base
  attr_accessible :active, :console_id1, :console_id2, :console_id3, :created_by, :description, :gsdate, :location_name, :max_age_limit, :min_age_limit, :online, :postcode, :title

    has_many :users, through :user_sessions
    has_many :user_sessions
    
end
