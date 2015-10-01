FactoryGirl.define do
  factory :member do
    sequence(:email) { |n| "person#{n}@example.com" }
    list
    sequence(:name) { |n| "member#{n} lastname" }
    member_id ""
    
    trait :unassigned do
      member_id nil
    end
    
  end

end
