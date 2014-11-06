class Imageobj < ActiveRecord::Base
  has_many :tagobj
  has_many :imageusrs
  has_many :userobj, through: :imageusr
  belongs_to :userobj
end
