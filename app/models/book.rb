class Book < ApplicationRecord
  include AASM

  belongs_to :user
  has_many :libraries
  has_many :added_books, through: :libraries, source: :user

  aasm do
    state :no_status, initial: true
    state :complete
  
    event :complete do
      transitions from: :no_status, to: :complete
    end
  end
end
