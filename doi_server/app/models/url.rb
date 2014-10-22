class Url < ActiveRecord::Base
  
  # validates :site, presence: true
  # validates :doiID, presence: true
  # validates :doi_id, presence: true

  belongs_to :doi
end
