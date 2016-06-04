FactoryGirl.define do
  factory :post do
    title { Faker::Name.name }
    description { Faker::Lorem.sentence(3, true, 4) }
    user_id { Faker::Number.number(4) }

    factory :post_with_longdescription do
      description { Faker::Lorem.paragraph }
    end
  end
end