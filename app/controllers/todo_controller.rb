
class TodoController < ApplicationController
    # before_action :set_todo, only: [:show, :update, :destroy]
    def index
        @todos = Todo.all
        # @todos = repo.find_all_todos
        json_response(@todos)

    end
    def create
       
        CreateRunner.new(self).run(params.permit(:title, :description, :minutes, :played, :status))
        
        # alpha = Repository.new(self).xyz
        # print(alpha)
    end

    def destroy
        if(@todo)
            json_response(@todo)

        else
            json_response(error, :unprocessable_entity)

        end
    end
    def show
      json_response(@todo)
    end

    # PUT /articles/:id
    def update
      @todo.update(todo_params)

    end
    
    def todo_params
      params.permit(:title, :description, :minutes, :played, :status)
    end
    def set_todo
      todo_id = params[:id]
      @todo = repo.find_todo(todo_id)
    end
    def create_succeeded(object, status= :ok)
        json_response(object,status)
        
    end
    def create_failed(object, status= :ok)
        error=Hash.new
        error["message"]="Invalid Parameters"
        json_response(error,status)
        
    end
    def json_response(object, status = :ok)
        render json: object, status: status
    end
    def repo
        @repo ||= Repository.new
    end
    
end
