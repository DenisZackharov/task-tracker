FactoryBot.define do
  factory :review do
    kind { "code" }
    state { "Unstarted" }
    user
  end
end
