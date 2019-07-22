class HomesController < ApplicationController
  def index
    homes = Home.all

    render json: homes
  end

  def show
    home = Home.find(params[:id])
    home_info = { home: home, users: home.users, events: home.events, to_dos: home.to_dos, shopping_items: home.shopping_items }

    render json: home_info
  end

  def create
    home = Home.new(name: params[:name])
    if home.save
      render json: { status: '200', home_id: home.id }
    else
      render json: { status: '400' }
    end
  end
end
