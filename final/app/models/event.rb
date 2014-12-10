class Event < ActiveRecord::Base
  belongs_to :user
  belongs_to :track
  
  has_many :images
end
