class Book < ApplicationRecord
  validates_presence_of :title
  validates_presence_of :pages
  validates_presence_of :year_published
  has_many :reviews
  has_many :book_authors
  has_many :authors, through: :book_authors
end
