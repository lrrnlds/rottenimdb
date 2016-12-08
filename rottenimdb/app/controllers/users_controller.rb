class UsersController < ApplicationController
  def new
    @user = User.new
    # p "hello"
  end

  def create
    # p "hello"
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = user.id
      redirect_to @user
    else
      redirect_to '/login'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private
    def user_params
      params.require(:user).permit(:email, :password, :username, :first_name)
    end
end
