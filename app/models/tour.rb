class Tour < ActiveRecord::Base
  validates :name, presence: true
  validates :description, presence: true
  validates :price, :numericality => true, :allow_nil => false
  has_many :roles, dependent: :delete_all

  #santo
  has_many :attachments, dependent: :destroy

  #santo
  accepts_nested_attributes_for :attachments, reject_if: :all_blank

  #santo
  #mount_uploader :attachment, AttachmentUploader

  #santo
  belongs_to :user

end
