FactoryGirl.define do
  factory :list do
  
    sequence(:title) { |n| "Test List #{n}" }
    event_time 2.weeks.from_now
    user
    description "A list of members"

    trait :no_title do
      title ""
    end
    
    trait :expired do
      event_time 1.day.ago
    end
    
  end

end
