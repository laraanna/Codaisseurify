FactoryGirl.define do
  factory :song do
    title               { Faker::Lorem.sentence(1) }
    year_of_release     { Faker::Number.positive }
    artist              { build(:artist) }
  end
end
