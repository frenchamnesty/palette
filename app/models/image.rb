class Image < ActiveRecord::Base
  belongs_to :user
  belongs_to :place

  mount_uploader :attachment, AttachmentUploader #attachment tells rails to use this uploader

end
