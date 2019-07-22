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
    user = User.create(email: params[:email], password: params[:password], name: params[:name], home_id: 42)

    render json: user
  end

  def update
    user = User.find(params[:id])

    color, link, home_id = params.values_at(:color, :link, :home_id)
    
    if color 
      user.color = color
    end

    if link
      user.pay_pal_me_link = link
    end

    if home_id
      user.home_id = home_id
    end

    if user.save
      render json: {status: '200', user: user}
    else
      render json: {status: '400'}
    end

  end
end
