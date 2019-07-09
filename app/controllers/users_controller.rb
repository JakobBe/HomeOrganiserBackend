class UsersController < ApplicationController
  def index
    users = User.all

    render json: users
  end

  def show
    user = User.find(params[:id])

    render json: user
  end

  def create
    user = User.create(email: params[:email], password: params[:password], name: params[:name], home_id: 1)

    render json: user
  end

  def update
    user = User.find(params[:id])

    user.color = params[:color]
    user.pay_pal_me_link = params[:link]
    user.save

    render json: user
  end
end
