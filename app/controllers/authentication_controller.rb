class AuthenticationController < ApplicationController
  # require 'JWT'
  def login

    @user = User.find_by( username: user_params[:username] )
    
    if !@user
      render json: { error: "username not found " }
    else
      if !@user.authenticate user_params[:password]
        render json: { error: "bad password" }
      else
        payload = {
          user_id: @user.id,
          username: @user.username,
        }
        secret = Rails.application.secrets.secret_key_base
        token = JWT.encode(payload, secret)
        render json: { token: token }
      end
    end
  end


  private

  def user_params
    params.require(:user).permit(:username, :password, :email)
  end 

end
