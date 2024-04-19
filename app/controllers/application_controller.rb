class ApplicationController < ActionController::Base
  include Pundit::Authorization
  before_action :set_current_user

  def set_current_user
    begin 
      @current_user ||= User.find(session[:user_id])
    rescue
      @current_user = nil
    end
  end

end
