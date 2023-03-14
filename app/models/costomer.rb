# frozen_string_literal: true

class Costomer < ApplicationRecord
  has_many :invoices
end
