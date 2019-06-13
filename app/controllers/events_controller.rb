class EventsController < ApplicationController
  def index
    user = User.find(params[:user_id])
    events = Event.where(home_id: user.home_id)

    render json: events
  end

  def create
    user = User.find(params[:user_id])

    Event.create(date: params[:date], user_id: user.id, user_name: user.name, home_id: user.home_id, text: params[:text], time: params[:time])
  end

  def update
    event = Event.find(params[:id])

    event.text = params[:text]
    event.save
  end

  def destroy
    Event.destroy(params[:id])
  end
end
