class Invoice < ApplicationRecord
  belongs_to :costomer
  belongs_to :item
end
