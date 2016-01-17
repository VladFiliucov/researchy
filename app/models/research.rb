class Research < ActiveRecord::Base
  validates :title,  :author, :description, :body, presence: true
end
