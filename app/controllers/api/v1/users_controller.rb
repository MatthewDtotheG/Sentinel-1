class Api::V1::UsersController < ApplicationController
  def index
    users = User.all
    render json: users, status: 200
  end

  def create
    user = User.create(user_params)
    render json: user, status: 201
  end

  def update
    @user.update(user_params)
    render json: @user, status: 200
  end

  def show
    render json: @user, status: 200
  end

  private
  def user_params
    params.permit(:first_name, :last_name, :email, :password, :password_digest)
  end
end
