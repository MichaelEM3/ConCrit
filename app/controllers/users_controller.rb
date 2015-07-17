class UsersController < ApplicationController

  def new
    @user = User.new
    if current_user
      redirect_to '/things'
    end
  end


  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to '/things'
    else
      redirect_to '/signup'
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
