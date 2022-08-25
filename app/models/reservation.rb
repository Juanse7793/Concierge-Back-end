class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :event
  validates :city, presence: true
  validates :start, presence: true
  validates :end, presence: true
end
