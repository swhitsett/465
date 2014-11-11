class Image < ActiveRecord::Base
  belongs_to :user
  has_many :tags, dependent: :destroy
  has_many :users, through: :access
  accepts_nested_attributes_for :tags

  #after_initialize :createimage

  def generate_filename
  		self.filename = SecureRandom.hex(12) + ".jpg"
  end

end
