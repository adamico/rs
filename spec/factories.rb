FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@example.com"}
    password "password"
    password_confirmation { |user| user.password}
  end

  factory :article do
    sequence(:titre) { |n| "titre#{n}"}
  end
end
