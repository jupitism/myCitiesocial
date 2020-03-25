class Product < ApplicationRecord
  include CodeGenerator
  acts_as_paranoid

  belongs_to :vendor

  validates :code, uniqueness: true
  validates :name, presence: true
  validates :list_price, :sell_price, numericality: {greater_than: 0, allow_nil: true}
end
