class Image < ActiveRecord::Base
  belongs_to :user
  has_many :tag
  has_many :users, through: :access

  def generate_filename
  	self.filename = SecureRandom.hex(12) + ".jpg"
  end
 # belongs_to :users
end
