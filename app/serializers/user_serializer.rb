class UserSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :reservations
end
  