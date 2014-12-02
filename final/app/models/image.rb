class Image < ActiveRecord::Base
  belongs_to :track
  belongs_to :user
  belongs_to :car
  belongs_to :event
end
