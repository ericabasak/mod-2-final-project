class CupcakeOrder < ApplicationRecord
  belongs_to :cupcake
  belongs_to :user

  validates_numericality_of :count
end
