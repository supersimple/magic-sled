FactoryGirl.define do
  factory :member do
    sequence(:email) { |n| "person#{n}@example.com" }
    list
    sequence(:name) { |n| "member#{n} lastname" }
    member_id ""
    
    trait :unassigned do
      member_id nil
    end
    
    trait :assigned do
      member_id "1234567890"
    end
    
  end

end
