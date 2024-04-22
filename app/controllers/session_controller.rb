class SessionController < ApplicationController

  def new
    user = User.where(name: 'username').first
    set_current_user(user)
  end
end
