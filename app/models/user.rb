class User < ApplicationRecord
  has_many :cupcake_orders
  has_many :cupcakes, through: :cupcake_orders
  has_secure_password
  validates :name, uniqueness: {case_sensitive: false}, presence: true
end
