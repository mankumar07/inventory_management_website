FactoryBot.define do
  factory :item do
    name { 'something' }
    price  { 10 }
    rating { 4 }
    inventory_id { 1 }
  end
end 