FactoryBot.define do
  factory :task do
    name { Faker::Hobby.activity }
    description { "MyText" }
    state { "Unstarted" }
    story_type { "Feature" }
    comment
    project
    requester_id { user.id }
  end
end
