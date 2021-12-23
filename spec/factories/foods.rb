FactoryBot.define do
  factory :food do
    name { 'MyString' }
    measurement_unit { 'MyString' }
    price { '1.50' }
    user { nil }
  end
end
