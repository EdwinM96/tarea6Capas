<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <meta charset="UTF-8">
        <title>Ingrese Estudiante</title>
    </head>
    <body>
        <div class="container">
            <div class="text-center center-text">
                <form:form action="${pageContext.request.contextPath}/formData" method="POST" modelAttribute="student">

                    <label>Ingrese un nombre: </label>
                    <form:input type="text" name="name" path="sName"/><br>

                    <label>Ingrese un apellido: </label>
                    <form:input type="text" name="lname" path="lName"/><br>

                    <label>Ingrese edad: </label>
                    <form:input type="number" name="age" path="sAge"/><br>

                    <label>Estado del estudiante</label><br>
                    <form:radiobutton name="status" path="bActivo" value="true"/><label>Activo</label><br>
                    <form:radiobutton name="status" path="bActivo" value="false"/><label>Inactivo</label><br>

                    <input type="submit" value="Agregar estudiante">
                </form:form>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    </body>
</html>