class SessionsController < ApplicationController
  def failure
    flash[:alert] = "Authentication failure"
    redirect_to root_path
  end

  def destroy
    reset_session
    redirect_to root_path
  end
end
