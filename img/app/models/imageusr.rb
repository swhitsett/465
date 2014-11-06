class Imageusr < ActiveRecord::Base
  belongs_to :imageobj
  belongs_to :userobj
end
