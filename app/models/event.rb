class Event < ApplicationRecord
  has_one_attached :image
  has_many :reservations
  validates :name, presence: true
  validates :location, presence: true
  validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :start_date, presence: true
  validates :end_date, presence: true
end
