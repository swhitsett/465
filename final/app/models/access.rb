class Access < ActiveRecord::Base
  belongs_to :track
  belongs_to :user
  belongs_to :event
end
