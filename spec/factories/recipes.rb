FactoryBot.define do
  factory :recipe do
    id { '1' }
    name { 'MyString' }
    preparation_time { 10 }
    cooking_time { 10 }
    description { 'MyText' }
    public { false }
  end
end
