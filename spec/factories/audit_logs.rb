FactoryBot.define do
  factory :audit_log do
    user { nil }
    status { 1 }
    start_date { "2021-03-23" }
    end_date { "2021-03-23" }
  end
end
