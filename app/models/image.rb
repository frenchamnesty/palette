class Image < ActiveRecord::Base
  belongs_to :place
  belongs_to :user
  has_many :images

  mount_uploader :attachment, AttachmentUploader #attachment tells rails to use this uploader


end
