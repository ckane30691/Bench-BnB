class Api::SessionsController < ApplicationController

  def create
    @user = User.find_by_credentials(
     login_params[:username],
     login_params[:password])

    if @user
      login!(@user)
      render '/api/users/show'
    else
      render json: {errors: ["Invalid credentials!"]}
    end

  end

  def destroy
    if logout!
      render json: {}
    else
      render json: 404
    end
  end

  private

  def login_params
    params.require(:user).permit(:username, :password)
  end
end
