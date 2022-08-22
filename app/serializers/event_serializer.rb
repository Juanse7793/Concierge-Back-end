class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :price, :start_date, :end_date, :image_urls
end
