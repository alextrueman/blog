FactoryBot.define do
  factory :car do
    sequence(:title) { |n| "Car #{n}" }
  end

  factory :driver do
    sequence(:name) { |n| "Driver #{n}" }
    sequence(:email) { |n| "email@#{n}" }
  end
end
