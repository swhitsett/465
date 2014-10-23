class Doi < ActiveRecord::Base

  has_many :url, dependent: :destroy
  accepts_nested_attributes_for :urls

  validates :name, presence: true
  validates :desc, presence: true
  validates :url, presence: true

end