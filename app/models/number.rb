class Number < ActiveRecord::Base
  attr_accessible :value,
                  :language

  has_many :comments

  validates :value, presence: true
  validates :language, presence: true
end
