class UsersController < ApplicationController
#  before_action :authenticate_user!

  private
  def user_params
    params.require(:user).permit(:id, :username, :email, :password, :bio, :image)
  end
  
  def index
  end

end