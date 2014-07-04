class Comment < ActiveRecord::Base
  attr_accessible :number_id, :text, :solution_state

  belongs_to :number

  validates :number_id, presence: true
  validates :text, presence: true

  state_machine :solution_state, initial: :new do
    state :new
    state :solved
    state :declined

    event :solve do
      transition [ :new, :declined ] => :solved
    end

    event :decline do
      transition [ :new, :solved ] => :declined
    end
  end
end
