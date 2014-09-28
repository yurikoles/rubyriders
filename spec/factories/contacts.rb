# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contact do
    name 'Tester Girl'
    sequence(:email_or_phone) {|n| "test#{n}@example.com or +#{Random.rand(10000000000)}"}
    question_or_feedback 'My question or feedback'
    sequence(:ip_address) {|n| "12.34.56.78#{n}"}
  end
end
