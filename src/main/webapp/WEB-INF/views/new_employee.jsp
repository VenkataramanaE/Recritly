<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Employee Management System</title>
    <link rel="stylesheet"
        href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
        integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
        crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <h1>Employee Management System</h1>
        <hr>
        <h2>Save Employee</h2>

        <form action="${pageContext.request.contextPath}/saveEmployee" method="POST">
            <input type="text" name="firstName" placeholder="Employee First Name" class="form-control mb-4 col-4">
            
            <input type="text" name="lastName" placeholder="Employee Last Name" class="form-control mb-4 col-4">
            
            <input type="text" name="email" placeholder="Employee Email" class="form-control mb-4 col-4">
            
            <button type="submit" class="btn btn-info col-2">Save Employee</button>
        </form>
        
        <hr>
        
        <a href="${pageContext.request.contextPath}/">Back to Employee List</a>
    </div>
</body>
</html>
