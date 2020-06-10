package comm.example.controller;
import comm.example.model.Todos;
import comm.example.service.TodoService;
importorg.springframework.beans.propertyeditors.StringTrimmerEdr;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
@Controller
@RequestMapping("/todo")
public class TodoController {
    private TodoService todoService;

    public TodoController(TodoService todoService) {
        this.todoService = todoService;
    }
    @RequestMapping("/listTodo")
    public String listTodo(Model model) {
        model.addAttribute("todos",todoService.getTodo());
        return "todo-list";

    }
   @InitBinder
    public void initBinder(WebDataBinder dataBinder) {

        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);

        dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
    }
    @RequestMapping("/showFormForAdd")
    public String showFormForAdd(Model model)
    {
        model.addAttribute("todo",new Todo());
        return "todo-form";
    }
    @RequestMapping("/saveTodo")
    public String saveTodo(@ModelAttribute("todo") Todo todo)
    {
        todoService.createTodo(todo);
        return "redirect:/todo/listTodo";
    }
    @GetMapping("/showFormForUpdate")
    public String showFormForUpdate(@RequestParam("todoId") int theId,
                                    Model theModel) {


        Todo theTodo = todoService.getTodo(theId);

        theModel.addAttribute("todo", thetodo);

                return "todo-form";
    }
    @RequestMapping("/updateTodo")
    public String updateTodo(@ModelAttribute("todo") Todo todo)
    {
        todoService.createTodo(todo);
        return "redirect:/todo/listtodo";
    }
    @RequestMapping("/delete")
    public String delete(@RequestParam("todoId") int todoId)
    {
        todoService.deleteTodo(todoId);
        return "redirect:/todo/listtodo";
    }
}
