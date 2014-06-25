class Comment < ActiveRecord::Base
  attr_accessible :number_id, :text

  belongs_to :number

  validates :number_id, presence: true
  validates :text, presence: true
end
