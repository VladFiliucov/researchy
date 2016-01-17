class Research < ActiveRecord::Base
  validates :title, presence: true
  validates :category, presence: true
  validates :author, presence: true
  validates :description, presence: true
  validates :body, presence: true
end
