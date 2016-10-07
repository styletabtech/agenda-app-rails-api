class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :due_date, :due_time, :priority
  # belongs_to :list
  # belongs_to :user
end
