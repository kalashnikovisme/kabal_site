FactoryGirl.define do
  factory :comment do
    text { generate :string }
    association :number
    number_id { Number.last ? Number.last.id : 1 }
  end
end
