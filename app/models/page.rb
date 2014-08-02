class Page < ActiveRecord::Base
  attr_accessible :body, :title, :slug, :navbar, :language

  validates :body, presence: true
  validates :title, presence: true
  validates :slug, presence: true
  validates :language, presence: true
end
