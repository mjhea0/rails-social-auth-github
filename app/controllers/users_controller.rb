class UsersController < ApplicationController
  def show
    authentication = Authentication.find_by_uid(session[:uid])
    @user = User.find_by_id(authentication[:user_id])
    @repos = Github.repos.list user: @user.nickname
  end
end
