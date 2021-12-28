FactoryBot.define do
  factory(:admin_user) do
    sequence(:email) { |n| "test#{n}@example.com" }
    password { 'password' }
    password_confirmation { 'password' }
    role { 'admin' }

    trait :readonly do
      role { 'read' }
    end
  end
end