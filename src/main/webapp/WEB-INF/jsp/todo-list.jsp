<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>

<html>

<head>
    <link rel="stylesheet" href="webjars/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <title>List Todos</title>

    <!-- reference our style sheet -->

    <link type="text/css"
          rel="stylesheet"
          href="css/style.css" />

</head>

<body>

<div id="wrapper">
    <div id="header">
        <h2>Todo List</h2>
    </div>
</div>
    <input type="button" onclick="window.location.href='showFormForAdd'; return false"
    class="add-button" value="Add New Todo">
<br/><br/>
<div id="container">
    <div id="content">
        <table class="table">
            <thead class="thead-dark">
            <tr>
                <th scope="col">Description</th>
                <th scope="col">Date</th>
                <th scope="col">Action</th>
            </tr>

            <c:forEach var="tempTodos" items="${todos}">
            <c:url var="updateLink" value="/todo/showFormForUpdate">
                <c:param name="todoId" value="${tempTodo.id}" />
            </c:url>
            <c:url var="deleteLink" value="/todo/delete">
                <c:param name="todoId" value="${tempTodo.id}" />
            </c:url>
            <tr>
                <td> ${tempTodo.description} </td>
                <td> ${tempTodo.date} </td>
                <td>
                    <a href="${updateLink}">Update</a>
                    <a href="${deleteLink}">Delete</a>
                </td>

            </tr>

            </c:forEach>

        </table>

    </div>

</div>


</body>

</html>







