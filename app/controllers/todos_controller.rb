class TodosController < ApplicationController
  
before_action :set_todo, only: [:show, :update, :destroy]

def create 
    @todo=Todo.new(todo_params)
    if @todo.save 
      redirect_to todos_path
    else
      render 'new'
    end
  end

  def new 
    @todo=Todo.new
 end

  private
  def set_todo
    @todo=Todo.find(params[:id])
  end
  def todo_params
    params.require(:todo).permit(:title, :completed)
  end
end
