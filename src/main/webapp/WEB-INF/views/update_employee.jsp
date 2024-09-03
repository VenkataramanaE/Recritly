<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Employee Management System</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h1>Employee Management System</h1>
        <hr>
        <h2>Update Employee</h2>

        <form action="${pageContext.request.contextPath}/saveEmployee" method="POST">
            <!-- Add hidden form field to handle update -->
            <input type="hidden" name="id" value="${employee.id}" />

            <input type="text" name="firstName" value="${employee.firstName}" class="form-control mb-4 col-4" />

            <input type="text" name="lastName" value="${employee.lastName}" class="form-control mb-4 col-4" />

            <input type="text" name="email" value="${employee.email}" class="form-control mb-4 col-4" />

            <button type="submit" class="btn btn-info col-2">Update Employee</button>
        </form>

        <hr>

        <a href="${pageContext.request.contextPath}/">Back to Employee List</a>
    </div>
</body>
</html>
