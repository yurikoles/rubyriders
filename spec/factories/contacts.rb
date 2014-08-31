# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contact do
    name 'Tester Girl'
    email_or_phone 'test@example.com or +380666939343'
    question_or_feedback 'My question or feedback'
    ip_address '12.34.56.78'
    created_at Date.today - 2
    updated_at Date.today - 1
  end
end
