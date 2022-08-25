class Event < ApplicationRecord
  has_many_attached :images
  has_many :reservations, dependent: :destroy
  validates :name, presence: true
  validates :location, presence: true
  validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :start_date, presence: true
  validates :end_date, presence: true

  def image_urls
    images.map do |attachment|
      Rails.application.routes.url_helpers.url_for(attachment)
    end
  end
end
