class CupcakeOrder < ApplicationRecord
  belongs_to :cupcake
  belongs_to :user
end
