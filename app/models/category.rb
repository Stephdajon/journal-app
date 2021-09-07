class Category < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true

  has_many :tasks
end
