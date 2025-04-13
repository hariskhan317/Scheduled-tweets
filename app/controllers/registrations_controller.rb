class RegistrationsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(users_params)
    if @user.save
      redirect_to root_path, notice: "Account created successfully."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def users_params
    params.require(:user).permit(:name, :email, :password)
  end
end
