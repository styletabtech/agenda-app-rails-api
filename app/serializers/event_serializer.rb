class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :time, :kind, :location, :description
  has_one :user
end
