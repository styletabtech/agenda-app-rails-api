class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :time, :kind, :location, :description
  belongs_to :user
end
