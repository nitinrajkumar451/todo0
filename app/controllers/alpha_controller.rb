class AlphaController < ApplicationController
    def index
        todos = AlphaRunner.new.run
        render json: todos
        # json_response(@todos)
        # AlphaRunner.new.run()
        
    end
    def create
       
        res=AlphaRunner.new.run(params.permit(:name, :description))
        return res
        # alpha = Repository.new(self).xyz
        # print(alpha)
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
    # def todo_params
    #     params.permit(:title, :description, :minutes, :played, :status)
    # end
end
