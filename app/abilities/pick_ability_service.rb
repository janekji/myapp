class PickAbilityService
  def self.call(user)
    case user.class
    when User
      UserAbility.new(user)
    else
      AnonymousAbility.new(user)
    end
  end
end