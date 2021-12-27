FactoryBot.define do
  factory(:user) do
    email { "test.a@test.com" }
    password { "SecretPassword123" }
    password_confirmation { "SecretPassword123" }
  end
end