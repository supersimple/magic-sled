FactoryGirl.define do
  factory :user do
    
    # SAMPLE FACEBOOK RESPONSE
    # {"provider"=>"facebook",
    #  "uid"=>"10153730667119884",
    #  "info"=>{"name"=>"Todd Resudek", "image"=>"http://graph.facebook.com/10153730667119884/picture"},
    #  "credentials"=>
    #   {"token"=>"CAAKqEcjmsVQBAF0xx1ZCLrOuI10mVt5CzLq2ZA7yU7qFMicpdBBhN6nvZAqCe8oQ36fKLBu3vVVaeGm39ZB7eZBubrHxDhe0fshQf13MZAhs9y3dPzRQNNe1r9ZAvhVK0kiBxorA3rvQQxZAGqQyrSpXK5tQQ9TXbLSlj5gQN9iITVckgYgDmwSWg31ZBlotRNprRNNMoauZAubCs41Xoyqjq3",
    #    "expires_at"=>1448813343,
    #    "expires"=>true},
    #  "extra"=>{"raw_info"=>{"name"=>"Todd Resudek", "id"=>"10153730667119884"}}}
    
    # SAMPLE GOOGLE RESPONSE
    # {"provider"=>"google_oauth2",
    #  "uid"=>"102922991626585600694",
    #  "info"=>
    #   {"name"=>"Todd Resudek",
    #    "email"=>"toddresudek@gmail.com",
    #    "first_name"=>"Todd",
    #    "last_name"=>"Resudek",
    #    "image"=>"https://lh6.googleusercontent.com/-7KM7aEF_EJs/AAAAAAAAAAI/AAAAAAAAAG4/wnUwySphrCc/photo.jpg?sz=50",
    #    "urls"=>{"Google"=>"https://plus.google.com/102922991626585600694"}},
    #  "credentials"=>{"token"=>"ya29._gFzxCO27vqnWq4FDc7lN_kml92HPyzQd73nlZ98ut8vUBZy0kR2TuybOOYJyTib9l3WKg", "expires_at"=>1443633015, "expires"=>true},
    #  "extra"=>
    #   {"id_token"=>
    #     "eyJhbGciOiJSUzI1NiIsImtpZCI6IjdkNjFiNTA3NTkyNGYxYmFkZGFiNWQ0MjUzYmVjYjIzMWJjZWNiZjQifQ.eyJpc3MiOiJhY2NvdW50cy5nb29nbGUuY29tIiwiYXRfaGFzaCI6IlpCNExMLWdhd0NsOEJPRDJJaWVWYkEiLCJhdWQiOiIyMjIzMTM0NDU4MDgtMnNhNWI0NW9kOGxqdTN2YXZicGFwbWRrZ29tdm42czAuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMDI5MjI5OTE2MjY1ODU2MDA2OTQiLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXpwIjoiMjIyMzEzNDQ1ODA4LTJzYTViNDVvZDhsanUzdmF2YnBhcG1ka2dvbXZuNnMwLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwiZW1haWwiOiJ0b2RkcmVzdWRla0BnbWFpbC5jb20iLCJpYXQiOjE0NDM2Mjk0MTYsImV4cCI6MTQ0MzYzMzAxNn0.wayX5cl_1g66PCxPLqECmxylZAq_HZ7BfSTvkXouRYoQzbtZCVzz3Ae8UWr8AltE-ekSCGgLTspKWB_BssySaYyeaTGWF6Lw6jdS44flTuvuNKpNONoDpv4YFbTql-lLd5eJHA04V2XLV65enYRoB7LnDokE3hkcn4b2Q8AWS35XBRJ9DKlxSQA-y2K6VeThM7EiEijwdDgT_YQu0XGrmNYynUnbIb3i85E2kkLt6kCmSFUg97e63wQB2ZL2v6IXPIY-t6Q6L36Uzi5YNlQblW_XZRf03BCJlo-ExzvbTWXZ73oCqlfTv0-zYhKoOKdKV51OMSnfebnS2yvT3prWDw",
    #    "raw_info"=>
    #     {"kind"=>"plus#personOpenIdConnect",
    #      "gender"=>"male",
    #      "sub"=>"102922991626585600694",
    #      "name"=>"Todd Resudek",
    #      "given_name"=>"Todd",
    #      "family_name"=>"Resudek",
    #      "profile"=>"https://plus.google.com/102922991626585600694",
    #      "picture"=>"https://lh6.googleusercontent.com/-7KM7aEF_EJs/AAAAAAAAAAI/AAAAAAAAAG4/wnUwySphrCc/photo.jpg?sz=50",
    #      "email"=>"toddresudek@gmail.com",
    #      "email_verified"=>"true",
    #      "locale"=>"en"}}}
    #
    
    
    provider "MyString"
    uid "MyString"
    name "MyString"
  end

end
