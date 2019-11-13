class User < ApplicationRecord
  has_many :cupcake_orders
  has_many :cupcakes, through: :cupcake_orders
end
