require 'rails_helper'

describe 'A visitor to our web app' do
  describe 'when I visit the books index page (User Story 6)' do
    before(:each) do
    @book_1 = Book.create(title: Faker::Book.title, pages: Faker::Number.number(3), year_published: Faker::Stripe.year)
    @book_2 = Book.create(title: Faker::Book.title, pages: Faker::Number.number(3), year_published: Faker::Stripe.year)
    end
    it 'displays all books' do
      visit books_path

      expect(page).to have_content("Title: #{@book_1.title}")
      expect(page).to have_content("Pages: #{@book_1.pages}")
      expect(page).to have_content("Year Published: #{@book_1.year_published}")

      expect(page).to have_content("Title: #{@book_2.title}")
      expect(page).to have_content("Pages: #{@book_2.pages}")
      expect(page).to have_content("Year Published: #{@book_2.year_published}")
    end
end
