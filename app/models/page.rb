class Page < ActiveRecord::Base
  attr_accessible :body, :title, :slug, :navbar

  validates :body, presence: true
  validates :title, presence: true
  validates :slug, presence: true
end
