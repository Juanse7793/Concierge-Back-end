class Event < ApplicationRecord
  has_attached :image
  has_many :reservations
end
