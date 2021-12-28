class AdminUserAbility < Ability
  def initialize(admin_user)
    if admin_user.role == 'admin'
      can :manage, :all
    else
      can :read, :all
    end
  end
end