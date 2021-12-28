class ApplicationController < ActionController::Base
  def current_ability
    @current_ability = PickAbilityService.call(current_user)
  end
end
