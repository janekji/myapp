FactoryBot.define do
  factory(:user) do
    email { "test.a@test.com" }
    password { "SecretPassword123" }
    password_confirmation { "SecretPassword123" }

    trait :with_admin_permission do
      admin { true }
    end
  end
end