class UserSerializer < ActiveModel::Serializer
  attributes :id, :email
  has_many :lists
  has_many :events
  has_many :items
end
