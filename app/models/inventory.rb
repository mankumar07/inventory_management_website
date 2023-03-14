# frozen_string_literal: true

class Inventory < ApplicationRecord
  validates :item_name, presence: true
  has_many :items, dependent: :destroy
end
