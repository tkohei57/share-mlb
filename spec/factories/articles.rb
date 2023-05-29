FactoryBot.define do
  factory :article do
    title { Faker::Lorem.word }
    content { Faker::Lorem.sentence }
    team_id { Faker::Number.between(from: 2, to: 32) }
    association :user

    after(:build) do |message|
      message.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
