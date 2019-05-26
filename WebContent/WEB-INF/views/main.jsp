<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <meta charset="UTF-8">
        <title>Index</title>
    </head>
    <body>
        <div class="container">
            <div class="center-text text-center">
                <table id="table" border=1>
                    <tr>
                        <th>Name</th>
                        <th>Last Name</th>
                        <th>Age</th>
                        <th>Status</th>
                    </tr>
                    <c:forEach items="${students}" var="students">
                        <tr>
                            <td>${students.sName}</td>
                            <td>${students.lName}</td>
                            <td>${students.sAge}</td>
                            <td>${students.activoDelegate}</td>
                            <th><form  name="form1" action="${pageContext.request.contextPath}/edit" method="post">
                                    <INPUT type="hidden" name="id" value=${students.cStudent}>
                                    <INPUT type="Submit" value="Editar">
                                </form></th>
                        </tr>
                    </c:forEach>
                </table>
                <br>
                <form action="${pageContext.request.contextPath}/deleteOne" method="post"> 
                    <label>Delete: </label><input type="text" name="name"><br>
                    <input type="submit" value="Delete">
                </form>
                <br>
                <form action="${pageContext.request.contextPath}/save" method="post"> 
                    <input type="submit" value="Add a new student">
                </form>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>