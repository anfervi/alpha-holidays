FactoryGirl.define do
  factory :public_holiday do
    name             { "Mac #{Faker::StarWars.planet}asky" }
    day              '2017-08-16'
    work_calendar_id { 1 }
  end
end
