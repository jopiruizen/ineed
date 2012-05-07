FactoryGirl.define do
  factory :user do
    username "jopi"
    email { "#{username}@example.com".downcase }
    password "yourpass"
    user_type "user"
    fbid "myfbid"
    twtid "mytwtid"
  end
end
