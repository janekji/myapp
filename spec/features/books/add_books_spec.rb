require 'capybara/rspec'
require 'rails_helper'

describe "User" do
  it "can't add new books to website" do
    user = create(:user)
    login_as(user)
    visit('http://localhost:3000/books/new')

    
  end
end

describe "Admin" do
  it "can add new books to website"
end