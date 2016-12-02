class Comment < ActiveRecord::Base
  belongs_to :tour
  belongs_to :user
  # santo
  validates :text, presence: true
  # santo
  scope :persisted, lambda { where.not(id: nil) }
end
