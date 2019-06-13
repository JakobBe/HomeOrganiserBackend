class ShoppingItemsController < ApplicationController
  def index
    user = User.find(params[:user_id])
    shopping_items = ShoppingItem.where(home_id: user.home_id, bought: false)

    render json:shopping_items
  end
  
  def create
    user = User.find(params[:user_id])

    ShoppingItem.create(name: params[:name], user_id: user.id, home_id: user.home_id, bought: false)
  end

  def destroy
    ShoppingItem.destroy(params[:id])
  end

  def update
    shopping_item = ShoppingItem.find(params[:id])

    shopping_item.name = params[:name]
    shopping_item.price = params[:price]
    shopping_item.bought_by = params[:user_id]
    shopping_item.bought = true

    shopping_item.save
  end
end
