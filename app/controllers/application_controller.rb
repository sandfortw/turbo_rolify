class ApplicationController < ActionController::Base
  include Pundit::Authorization
  before_action :set_current_user

  def set_current_user
    @current_user ||= User.find(session[:user_id])
  end

end
