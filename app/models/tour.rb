class Tour < ActiveRecord::Base
  validates :name, presence: true
  validates :description, presence: true
  has_many :roles, dependent: :delete_all
end
