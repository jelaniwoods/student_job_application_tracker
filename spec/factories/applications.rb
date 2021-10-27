FactoryBot.define do
  factory :application do
    submitted { false }
    user_id { 1 }
    company_id { 1 }
    due_on { "2021-10-27" }
    title { "MyString" }
  end
end
