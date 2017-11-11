FactoryGirl.define do
  factory :artist do
    name      { Faker::Lorem.sentence(1) }
    genre     { Faker::Lorem.sentence(1) }
    bio       { Faker::Lorem.sentence(40) }
  end
end
