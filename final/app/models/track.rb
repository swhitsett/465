class Track < ActiveRecord::Base
  belongs_to :image
  belongs_to :event

  has_many :ttimes, dependent: :destroy  
  has_many :events, dependent: :destroy
  has_many :images
  has_many :accesses
  accepts_nested_attributes_for :images
  accepts_nested_attributes_for :events
  accepts_nested_attributes_for :ttimes
end
