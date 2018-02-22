class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to '/profile'
    else
      redirect_to '/signup'
    end
  end
  def edit
    @user = current_user
  end

  def update
    if current_user.update_attributes(user_params)
      redirect_to '/profile'
    else
      render 'edit'
    end
  end

  private

  def user_params
  	params.require(:user).permit(:email, :password, :firstname, :lastname, :birthdate, :current_weight, :goal_weight)
  end
end
