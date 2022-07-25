class TodosController < ApplicationController
  
before_action :set_todo, only: [:show, :update, :destroy]

 def index 
 end

 def show 
 end
def create 
    @todo=Todo.new(todo_params)
    if @todo.save 
     # render json:@todo
     redirect_to root_paht
    else
     # render json: @todo.errors, status: :unprocessable _entity
     render 'new'
    end
  end

  def new 
    @todo=Todo.new
 end

 def update 
 end

 def destroy 
 end
  private
  def set_todo
    @todo=Todo.find(params[:id])
  end
  def todo_params
    params.require(:todo).permit(:title, :completed)
  end
end
