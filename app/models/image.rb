class Image < ActiveRecord::Base
  belongs_to :user
  belongs_to :place
  mount_uploader :attachment #attachment tells rails to use this uploader

  validates :caption, presence: true #make sure the image is attached 
end
