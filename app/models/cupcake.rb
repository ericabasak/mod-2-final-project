class Cupcake < ApplicationRecord
  has_many :cupcake_orders
  has_many :users, through: :cupcake_orders
  has_one_attached :image
end
