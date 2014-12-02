class Track < ActiveRecord::Base
  belongs_to :image
  belongs_to :event
end
