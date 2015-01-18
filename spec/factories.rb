FactoryGirl.define do
  factory :user do
    name "Taro Test"
    email "taro@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end
