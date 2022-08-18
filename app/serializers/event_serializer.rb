class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :description, :price, :image_urls
  has_many :reservations
end
