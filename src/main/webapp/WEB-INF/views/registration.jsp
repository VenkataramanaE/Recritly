<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Registration</title>
    <link rel="stylesheet"
        href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
        integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
        crossorigin="anonymous">
</head>
<body>
    <!-- create navigation bar (header) -->
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed"
                    data-toggle="collapse" data-target="#navbar" aria-expanded="false"
                    aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="${pageContext.request.contextPath}/">Employee Management System</a>
            </div>
        </div>
    </nav>

    <br>
    <br>
    <!-- Create HTML registration form -->
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <!-- success message -->
                <c:if test="${param.success != null}">
                    <div class="alert alert-info">You've successfully registered to our awesome app!</div>
                </c:if>

                <h1>Registration</h1>

                <form action="${pageContext.request.contextPath}/registration" method="post">
                    <div class="form-group">
                        <label class="control-label" for="firstName">First Name</label>
                        <input id="firstName" class="form-control" name="firstName" required autofocus="autofocus" />
                    </div>

                    <div class="form-group">
                        <label class="control-label" for="lastName">Last Name</label>
                        <input id="lastName" class="form-control" name="lastName" required autofocus="autofocus" />
                    </div>

                    <div class="form-group">
                        <label class="control-label" for="email">Email</label>
                        <input id="email" class="form-control" name="email" required autofocus="autofocus" />
                    </div>

                    <div class="form-group">
                        <label class="control-label" for="password">Password</label>
                        <input id="password" class="form-control" type="password" name="password" required autofocus="autofocus" />
                    </div>

                    <div class="form-group">
                        <button type="submit" class="btn btn-success">Register</button>
                        <span>Already registered? <a href="${pageContext.request.contextPath}/login">Login here</a></span>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
