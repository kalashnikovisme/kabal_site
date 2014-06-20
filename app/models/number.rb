class Number < ActiveRecord::Base
  attr_accessible :right_answer,
                  :value,
                  :language

  validates :value, presence: true
  validates :language, presence: true
end
