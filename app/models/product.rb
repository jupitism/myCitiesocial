class Product < ApplicationRecord
  include CodeGenerator
  acts_as_paranoid
  
  has_rich_text :description

  belongs_to :vendor
  has_many :skus
  accepts_nested_attributes_for :skus, reject_if: :all_blank, allow_destroy: true

  validates :code, uniqueness: true
  validates :name, presence: true
  validates :list_price, :sell_price, numericality: {greater_than: 0, allow_nil: true}
end
