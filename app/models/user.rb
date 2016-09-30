class User < ActiveRecord::Base
  include Authentication
  has_many :lists
  has_many :events
end
