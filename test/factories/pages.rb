FactoryGirl.define do
  factory :page do
    title
    body { generate :string }
    slug { generate :string }
  end
end
