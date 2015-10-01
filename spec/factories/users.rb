FactoryGirl.define do
  factory :user do
    
    provider "google_oauth2"
    sequence(:uid, 'a') { |n| "googleuser" + n }
    name "Larry Flowers"
    image "https://lh6.googleusercontent.com/-7KM7aEF_EJs/AAAAAAAAAAI/AAAAAAAAAG4/wnUwySphrCc/photo.jpg?sz=50"
    
    trait :facebook do
      provider "facebook"
      sequence(:uid, 'a') { |n| "facebookuser" + n }
      image "http://graph.facebook.com/10153730667119884/picture"
    end
    
    trait :no_image do
      image ""
    end
    
  end

end
