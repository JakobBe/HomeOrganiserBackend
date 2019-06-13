class SessionsController < ApplicationController

  def create
    user = User.find_by_email(params[:email])
    if user && user.password == params[:password]
      session[:user_id] = user.id

      render json: { status: 'Logged In', user: user }
    else
      render json: { status: 'Email or password is invalid' }
    end
  end

  def destroy
    session[:user_id] = nil
    render json: { status: 'Logged out' }
  end
end
