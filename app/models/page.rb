class Page < ActiveRecord::Base
  attr_accessible :body, :title, :slug

  validates :body, presence: true
  validates :title, presence: true
  validates :slug, presence: true
end
