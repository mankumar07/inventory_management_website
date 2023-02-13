# frozen_string_literal: true

class Invoice < ApplicationRecord
  belongs_to :costomer
  belongs_to :item
end
