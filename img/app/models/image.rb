class Image < ActiveRecord::Base
  belongs_to :tag
  belongs_to :user
  has_many :user, through: :access
  belongs_to :user
end
