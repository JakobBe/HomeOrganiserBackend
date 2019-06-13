class ToDosController < ApplicationController
  def index
    user = User.find(params[:user_id])
    to_dos = ToDo.where(home_id: user.home_id)

    render json: to_dos
  end

  def create 
    user = User.find(params[:user_id])

    ToDo.create(task: params[:task], user_id: user.id, user_name: user.name, home_id: user.home_id, appointee: params[:appointee], due_date: params[:date], done: false)
  end

  def update
    to_do = ToDo.find(params[:id])

    if to_do.done
      to_do.done = false
    elsif !to_do.done
      to_do.done = true
    end
    
    to_do.save
  end

  def user_todos
    user = User.find(params[:id])
    to_dos = ToDo.user_to_dos(user.id, user.home_id)

    render json: to_dos
  end

  def all_done
    user = User.find(params[:id])
    to_dos = ToDo.user_to_dos(user.id, user.home_id).done

    render json: to_dos
  end

  def all_undone
    user = User.find(params[:id])
    to_dos = ToDo.user_to_dos(user.id, user.home_id).undone

    render json: to_dos
  end

  def destroy
    ToDo.destroy(params[:id])
  end
end
