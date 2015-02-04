class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @old_user = User.where(email: user_params[:email])
    if !@old_user.first
      if @user.save
        redirect_to @user
      else
        render 'new'
      end
    else
      redirect_to action: 'show', id: @old_user.first.id
    end
  end

  def show
    @user = User.find(params[:id])
    @locations = Location.all
  end

  private

  def user_params
    params.require(:user).permit(:firstname, :lastname, :email)
  end
end
