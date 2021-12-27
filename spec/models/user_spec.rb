require 'rails_helper'

RSpec.describe User, type: :model do

  it "has a valid factory" do
    expect(build(:user)).to be_valid
  end
  it "is valid with the email, password and password confirmation" do
    user = build(:user)
    expect(user).to be_valid
  end
  it "is invalid without a email" do
    user = build(:user, email: nil)
    user.valid?
    expect(user.errors[:email]).to include("can't be blank")
  end
  it "is invalid without a password" do
    user = build(:user, password: nil)
    user.valid?
    expect(user.errors[:password]).to include("can't be blank")
  end
  it "is invalid without a password confirmation" do
    user = build(:user, password_confirmation: nil)
    user.valid?
    expect(user.errors[:password_confirmation]).to include()
  end
  it "is invalid with a duplicate email" do
    create(:user)
    user = build(:user)
    user.valid?
    expect(user.errors[:email]).to include('has already been taken')
  end
end
