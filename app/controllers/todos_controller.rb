class TodosController < ApplicationController
    def index 
      render json: Todo.all
    end

    def update
      todo = Todo.find(params['id'])
      todo.update_attribute(:isComplited, !todo.isComplited)
      render json: todo
    end

    def create
      render json: Todo.create(todo_params)
    end

    private def todo_params 
      params.require(:todo).permit(:text, :isComplited, :project_id)
    end
  end
  