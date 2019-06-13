class ExpensesController < ApplicationController
  def index
    expenses = Expense.where(home_id: params[:home_id])

    render json: expenses
  end

  def create
    body = JSON.parse(request.body.string)

    body["items"].each do |item|
       shopping_item = ShoppingItem.find(item["id"])
       shopping_item.bought = true
       shopping_item.bought_by = params[:user_id]
       shopping_item.save
    end

    Expense.create(amount: params[:amount], user_id: params[:user_id], home_id: 1)
  end
end
