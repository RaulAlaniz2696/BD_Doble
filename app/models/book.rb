class Book < ApplicationRecord
  validates :title, presence: true
  has_many :description_books
end
