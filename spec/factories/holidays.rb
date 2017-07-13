FactoryGirl.define do
  factory :holiday do
    year                { Faker::Number.between(1980, 2017) }
    status              { Faker::Number.between(0, 2) }
    title               { "Mac #{Faker::StarWars.planet}asky" }
    description         { Faker::Hipster.sentence(4) }
    start_day '2017-08-16'
    end_day '2017-09-11'
    user_id { Faker::Number.between(0, 10) }
    department 'Imagen Médica'
  end
end
