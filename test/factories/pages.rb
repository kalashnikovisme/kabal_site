FactoryGirl.define do
  factory :page do
    title
    body { generate :string }
    slug { generate :string }
    navbar { true }
  end
end
