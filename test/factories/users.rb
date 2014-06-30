FactoryGirl.define do
  factory :user do
    login { generate :string }
    password "123"
    password_confirmation "123"
  end
end
