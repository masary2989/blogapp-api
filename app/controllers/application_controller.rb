class ApplicationController < ActionController::API
  include CanCan::ControllerAdditions
  before_action :current_user

  def current_user
    @current_user = User.find(params[:user_id])
  end

  def current_ability
    @current_ability ||= Ability.new(current_user)
  end
end

