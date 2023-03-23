
class Repository
    def find_all_todos
        Todo.all
    end
    def find_todo(todo_id)
        Todo.find(todo_id)
    end
    def new_todo(todo_params)
        Todo.new(todo_params)
    end
    def save_todo(todo)
        todo.save
    end
    
end