class LogoutController < ApplicationController

  def index
    begin
      session[:user_id] = nil
      @current_user = nil
      redirect_to root_path
    rescue => exception
      flash[:error] = exception
      redirect_to root_path
    end
  end
end
