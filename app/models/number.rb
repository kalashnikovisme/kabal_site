class Number < ActiveRecord::Base
  attr_accessible :comment,
                  :value,
                  :language

  validates :value, presence: true
  validates :language, presence: true
end
