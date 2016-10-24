class Attachment < ActiveRecord::Base
  belongs_to :tour
  #santo
  mount_uploader :file, AttachmentUploader
end
