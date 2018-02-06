class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to '/profile'
    else
      redirect_to '/signup'
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to '/profile'
    else
      render 'edit'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name,:surname, :email, :password,:birthdate,
                                 :address, :height, :weight, :goalweight, :calories)
  end
end
