FactoryBot.define do
  factory :comment do
    text { "MyText" }
    user
  end
end
