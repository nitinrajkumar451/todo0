class CreateRunner
    # attr_reader :context, :repo
    # def initialize(context)
    #     @context = context
    #     # @repo = context.repo
    # end
    def run(todo_alphas)
        todo =repo.new_todo(todo_alphas)
        # todo = Todo.new(todo_params)
        if(repo.save_todo(todo))
            # puts "alpha"
            # puts "#{@context}"
            context.create_succeeded(todo, :created)   
        else
            @context.create_failed(todo, :unprocessable_entity)
        end
    end
    # def run
    #     repo.find_all_todos
    # end
    def repo
        @repo ||= Repository.new
    end

end