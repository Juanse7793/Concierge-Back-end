class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :price, :image_urls
  has_many :reservations
end
