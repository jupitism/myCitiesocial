FactoryBot.define do
  factory :sku do
    product { nil }
    spec { "MyString" }
    quantity { 1 }
    deleted_at { "2020-03-30 18:51:19" }
  end
end
