FactoryBot.define do
  factory :user do
    nickname                   { Faker::Name.name }
    email                      { Faker::Internet.free_email }
    password                   { Faker::Lorem.characters(number: 6, min_alpha: 1, min_numeric: 1) }
    password_confirmation      { password }
    favorite_team_id           { Faker::Number.between(from: 2, to: 32) }
    favorite_player            { Faker::Name.name }
  end
end
