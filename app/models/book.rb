class Book < ApplicationRecord
  belongs_to :user
  has_many :libraries
  has_many :added_books, through: :libraries, source: :user
end
