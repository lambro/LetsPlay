class ConsolesUsers < ActiveRecord::Base
  attr_accessible :console_id, :gamer_tag, :user_id

belongs_to :user
belongs_to :console

end
