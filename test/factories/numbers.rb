FactoryGirl.define do
  factory :number do
    value { Random.new.rand(10 ** 100).to_s }
    language "Russian"
  end
end
