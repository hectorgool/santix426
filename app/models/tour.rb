class Tour < ActiveRecord::Base
  extend FriendlyId
  validates :name, presence: true, length: { maximum: 70 }
  validates :description, presence: true, length: { maximum: 1000 }
  validates :price, :numericality => true, :allow_nil => false
  has_many :roles, dependent: :delete_all

  #santo
  has_many :attachments, dependent: :destroy

  #santo
  accepts_nested_attributes_for :attachments, reject_if: :all_blank

  #santo
  belongs_to :user

  #santo
  has_many :reservations, dependent: :destroy

  #santo
  accepts_nested_attributes_for :reservations, reject_if: :all_blank

  # santo
  attr_accessor :firstname, :lastname

  # santo
  paginates_per 9

  # santo
  has_many :comments, dependent: :destroy

  #santo
  accepts_nested_attributes_for :comments, reject_if: :all_blank

  # santo
  friendly_id :name, use: :slugged
  
end
