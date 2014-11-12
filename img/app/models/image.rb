class Image < ActiveRecord::Base
  belongs_to :user
  has_many :tags, dependent: :destroy
  has_many :users, through: :access
  accepts_nested_attributes_for :tags

  #after_initialize :createimage

  def generate_filename
  		self.filename = (SecureRandom.random_number(2000)*SecureRandom.random_number(30) + 2458).chr + ".jpg"
  end

end
