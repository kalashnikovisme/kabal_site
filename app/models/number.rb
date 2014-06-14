class Number < ActiveRecord::Base
  attr_accessible :right_answer,
                  :value

  validates :value, presence: true
end
