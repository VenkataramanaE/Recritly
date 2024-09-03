<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Registration and Login App</title>
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
          crossorigin="anonymous">
</head>
<body>

<!-- Create navigation bar (header) -->
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed"
                    data-toggle="collapse" data-target="#navbar" aria-expanded="false"
                    aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="<c:url value="/" />">Employee Management System</a>
        </div>
    </div>
</nav>

<br>
<br>
<div class="container">
    <div class="row">
        <div class="col-md-6 col-md-offset-3">

            <h1>Sign-in</h1>
            <form action="<c:url value='/login' />" method="post">
                <!-- Error message -->
                <c:if test="${param.error != null}">
                    <div class="alert alert-danger">Invalid username or password.</div>
                </c:if>

                <!-- Logout message -->
                <c:if test="${param.logout != null}">
                    <div class="alert alert-info">You have been logged out.</div>
                </c:if>

                <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" class="form-control" id="username" name="username"
                           placeholder="Enter Email ID" required autofocus>
                </div>

                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" class="form-control"
                           placeholder="Enter Password" required>
                </div>

                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3">
                            <input type="submit" name="login-submit" id="login-submit"
                                   class="form-control btn btn-primary" value="Log In">
                        </div>
                    </div>
                </div>
            </form>
            <div class="form-group">
                <span>New user? <a href="<c:url value='/registration' />">Register here</a></span>
            </div>
        </div>
    </div>
</div>
</body>
</html>
