class Number < ActiveRecord::Base
  attr_accessible :value,
                  :language

  has_many :comments, dependent: :destroy

  validates :value, presence: true, number: true
  validates :language, presence: true
end
