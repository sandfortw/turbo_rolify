class AdminDashboardController < ApplicationController

  def index
    #TODO: Fix this query jank
    if @current_user && @current_user.roles.where(name: 'admin') != []
      "Happy Path"
    else
      flash[:error] = "Unauthorized"
      redirect_to root_path
    end
  end
end
