FactoryGirl.define do
  factory :user do
    name     "Helmut Hirner"
    email    "helmut@hirner.at"
    password "foobar"
    password_confirmation "foobar"
  end
end