class Image < ActiveRecord::Base
  belongs_to :tag
  belongs_to :user
  has_many :users, through: :access
 # belongs_to :users
end
