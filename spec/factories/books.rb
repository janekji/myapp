FactoryBot.define do
  factory :book do
    title { "MyString" }
    description { "MyText" }
    author { "MyString" }
    user_id { 1 }
  end
end
