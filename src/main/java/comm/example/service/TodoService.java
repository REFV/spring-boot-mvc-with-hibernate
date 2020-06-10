package comm.example.service;

import comm.example.model.Todo;

import java.util.List;

public interface TodoService {
    public List<Todo> getTodos();
    public void createTodo(Todo todo);
    public Todo getTodo(int todoId);
    public void deleteTodo(int todoId);
}
