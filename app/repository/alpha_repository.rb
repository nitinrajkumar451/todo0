class AlphaRepository
    def find_all_alphas
        Alpha.all
    end
    def new_alpha(todo_params)
        Alpha.new(todo_params)
    end
    def save_alpha(todo)
        todo.save
    end
end