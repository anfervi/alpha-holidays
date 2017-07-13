FactoryGirl.define do
  factory :work_schedules do
    name               { "Mac #{Faker::StarWars.planet}asky" }
    company            'Alfatec Sistemas S.L.'
    year               '2017'
    holiday_id         { Faker::Number.between(0, 10) }
  end
end
