class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    render json: @user, 
    include: [:scores,]
  end

  def create
    @user = User.new(user_params)
    if !user_params.include?(:username || :email)
      render json: { message: "need a username" }, status: :unprocessable_entity
    else
      if @user.save
        render json: @user, status: :created, location: @user
      else
        render json: @user.errors, status: :unprocessable_entity
      end
    end
  end

  private 

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :password, :email)
  end 

end
