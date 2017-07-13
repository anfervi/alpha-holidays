# spec/factories/users.rb
FactoryGirl.define do
  factory :user do
    name { Faker::Name.name }
    lastname	{ Faker::Name.name }
    department 'Imagen Médica'
    email     { Faker::Internet.email }
    password  '12345678'

    factory :admin, class: User do
      role 'admin'
    end

    factory :manager, class: User do
      role 'manager'
    end

    factory :employee, class: User do
      role 'employee'
    end
  end
end
