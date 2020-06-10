<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>
    <title>Save Todo</title>

    <link type="text/css"
          rel="stylesheet"
          href="css/style.css">

    <link type="text/css"
          rel="stylesheet"
          href="css/add-todo-style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
          integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>

<body>

<div id="wrapper">
    <div id="header">
        <h2>TOdo List</h2>
    </div>
</div>

<div id="container">
    <h3>Add  Todo</h3>

    <form:form action="saveTodo" modelAttribute="todo" method="POST">
        <form:hidden path="id" />
        <div class="form-group">
            <label>Description:</label>
            <form:input path="Description"/>

        </div>
        <br/>
        
        <div class="form-group">
            <label>Date:   </label>
            <form:input path="date"/>
        </div>
        <br/>
        <input type="submit" value="Save" class="save"/>
    </form:form>

    <p>
        <a href="${pageContext.request.contextPath}/customer/listTodo">Back to List</a>
    </p>

</div>


</body>

</html>








