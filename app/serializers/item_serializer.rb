class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :due_date, :type
  has_one :list
end
