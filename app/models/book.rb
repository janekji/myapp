class Book < ApplicationRecord
  belongs_to :users
  has_many :libraries
  has_many :added_books, throguh: :libraries, source: :user
end
