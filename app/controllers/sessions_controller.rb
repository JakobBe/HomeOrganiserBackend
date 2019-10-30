class SessionsController < ApplicationController
  def create
    user = User.find_by_sub(params[:sub])
    session[:user_id] = user.id
    render json: { status: 'Logged In', user: user }
  end

  def destroy
    session[:user_id] = nil
    render json: { status: 'Logged out' }
  end
end 
