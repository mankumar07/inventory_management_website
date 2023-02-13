# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name { 'manish' }
    email  { 'manish97@gmail.com' }
    contact { '1234567890' }
    password { 123_456 }
  end
end
