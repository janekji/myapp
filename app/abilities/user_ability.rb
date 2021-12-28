class UserAbility < Ability
  def initialize(user)
    can :manage, Book if user.admin?
    can [:read, :library]
  end
end