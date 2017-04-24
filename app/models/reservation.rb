class Reservation < ActiveRecord::Base
  belongs_to :tour
  belongs_to :user
  validates :customers, numericality: { greater_than: 0 }, :allow_nil => false
end
