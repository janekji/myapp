require 'capybara/rspec'
require 'rails_helper'

RSpec.describe BooksController do
  context "without logged in user" do
    it "can't add new books to website" do
      visit('http://localhost:3000/books/new')
  
      expect(page.current_path).to eq new_user_session_path
    end
  end

  context "with logged in user" do
    it "can't add new books to website" do
      user = create(:user)
      sign_in user
      get :new

      expect(response).to redirect_to(root_path)
    end
  end
end

describe "Admin" do
  it "can add new books to website" do
    admin = create(:user, :with_admin_permission)

  end
end