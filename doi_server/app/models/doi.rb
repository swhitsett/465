class Doi < ActiveRecord::Base

  has_many :urls, dependent: :destroy
  accepts_nested_attributes_for :urls
  
  after_initialize :createdoi

  validates :name, presence: true
  validates :desc, presence: true

  def search 
  	name
  end

  def createdoi
  	self.url ||=SecureRandom.hex(12)
  end 

end
