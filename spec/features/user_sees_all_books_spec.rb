require 'rails_helper'

describe 'A visitor to our web app' do
  describe 'when I visit the books index page' do
    it 'displays all books' do
      book_1 = Book.create(title: Faker::Book.title, authors: Faker::Book.author, pages: Faker::Number.number(3), publish_year: Faker::Stripe.year)
      book_2 = Book.create(title: Faker::Book.title, authors: Faker::Book.author, pages: Faker::Number.number(3), publish_year: Faker::Stripe.year)


      visit books_path

      expect(page).to have_content("Title: #{book_1.title}")
      expect(page).to have_content("Author(s): #{book_1.authors}")
      expect(page).to have_content("Pages: #{book_1.pages}")
      expect(page).to have_content("Year Published: #{book_1.publish_year}")

      expect(page).to have_content("Title: #{book_2.title}")
      expect(page).to have_content("Author(s): #{book_2.authors}")
      expect(page).to have_content("Pages: #{book_2.pages}")
      expect(page).to have_content("Year Published: #{book_2.publish_year}")



    end
  end
end
