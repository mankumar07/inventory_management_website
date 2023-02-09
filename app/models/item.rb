class Item < ApplicationRecord
  validates :name, :price, presence: true 
  validates :rating, numericality: {less_than_equal: 5, message: "Rating should be in between 1-5"}
  belongs_to :inventory, optional: true
  has_one :stock
  has_many :invoices
end
