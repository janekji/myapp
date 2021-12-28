require 'capybara/rspec'
require 'rails_helper'

describe 'Active admin' do
  it 'logs in registered admin users' do
    admin = create(:admin_user)
    visit('http://localhost:3000/admin/login')

    fill_in 'Email', with: admin.email
    fill_in 'Password', with: admin.password
    click_on('Login')
    visit('http://localhost:3000/admin/admin_users')

    expect(page).to have_content('New Admin User')
  end

  it 'logs in registered readonly users' do
    admin = create(:admin_user, :readonly)
    visit('http://localhost:3000/admin/login')

    fill_in 'Email', with: admin.email
    fill_in 'Password', with: admin.password
    click_on('Login')
    visit('http://localhost:3000/admin/admin_users')

    expect(page).to have_content('Admin Users')
    expect(page).not_to have_content('New Admin User')
  end
end