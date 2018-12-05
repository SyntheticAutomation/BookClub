require 'rails_helper'

describe 'A visitor to our web app' do
  it 'sees a navigation bar' do
    visit books_path

    within("#nav-bar") do
      expect(page).to have_content("home")
      expect(page).to have_content("browse all books")
    end
  end
end
