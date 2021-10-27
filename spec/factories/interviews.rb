FactoryBot.define do
  factory :interview do
    application_id { 1 }
    round { 1 }
    starts_at { "2021-10-27 06:45:12" }
    completed { false }
  end
end
