FactoryGirl.define do
  factory :user do
    name 'Jake Parks'
    email 'jake@example.com'
    password 'foobar'
    password_confirmation 'foobar'
  end
end