FactoryGirl.define do
  factory :page do
    title
    body { generate :string }
  end
end
