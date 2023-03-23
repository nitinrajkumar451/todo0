class AlphaRunner
    # attr_reader :context
    # def initialize(context)
    #     @context = context
    #     # @repo = context.repo
    # end
    # def run
    #     AlphaRepository.new.find_all_alphas
    # end
    def run(todo_alphas)

        todo =repo.new_alpha(todo_alphas)
        # todo = Todo.new(todo_params)
        if(repo.save_alpha(todo))
            return todo
            # context.create_succeeded(todo, :created)   
        else
            error=Hash.new
            error["message"] = "Id Not Found"           
            # return error
            # context.create_failed(todo, :unprocessable_entity)   

        end
    end
    # private
    def repo
        @repo  ||= AlphaRepository.new
    end
end