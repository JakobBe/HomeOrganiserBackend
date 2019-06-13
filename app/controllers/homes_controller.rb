class HomesController < ApplicationController
  def show
    home = Home.find(params[:id])
    home_info = { home: home, users: home.users, events: home.events, to_dos: home.to_dos, shopping_items: home.shopping_items }

    render json: home_info
  end

  def create
    Home.create(name: params[:name])
  end
end
