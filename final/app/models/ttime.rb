class Ttime < ActiveRecord::Base
  belongs_to :car
  belongs_to :user
  belongs_to :track
end
