# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :client do
    name "John Smith"
    short_description "Short description"
    description "Long description"
    notable_achievement "Notable achievement"
    icon "Icon name"
    icon_mouseover "Icon mouseover name"
    screenshot "Shortscreenshot"
    active false
  end
end
