<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Employee Management System</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
          crossorigin="anonymous">
</head>
<body>
<!-- Create navigation bar (header) -->
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="<c:url value="/" />">Employee Management System</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <c:if test="${not empty sessionScope.user}">
                    <li><a href="<c:url value='/logout' />">Logout</a></li>
                </c:if>
            </ul>
        </div>
    </div>
</nav>

<br>
<br>

<div class="container my-2">
    <h1>Employees List</h1>

    <a href="<c:url value='/showNewEmployeeForm' />" class="btn btn-primary btn-sm mb-3">Add Employee</a>

    <table border="1" class="table table-striped table-responsive-md">
        <thead>
        <tr>
            <th>
                <a href="<c:url value='/page/${currentPage}?sortField=firstName&sortDir=${reverseSortDir}' />">
                    Employee First Name
                </a>
            </th>
            <th>
                <a href="<c:url value='/page/${currentPage}?sortField=lastName&sortDir=${reverseSortDir}' />">
                    Employee Last Name
                </a>
            </th>
            <th>
                <a href="<c:url value='/page/${currentPage}?sortField=email&sortDir=${reverseSortDir}' />">
                    Employee Email
                </a>
            </th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${listEmployees}" var="employee">
            <tr>
                <td>${employee.firstName}</td>
                <td>${employee.lastName}</td>
                <td>${employee.email}</td>
                <td>
                    <a href="<c:url value='/showFormForUpdate/${employee.id}' />" class="btn btn-primary">Update</a>
                    <a href="<c:url value='/deleteEmployee/${employee.id}' />" class="btn btn-danger">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <c:if test="${totalPages > 1}">
        <div class="row col-sm-10">
            <div class="col-sm-2">
                Total Rows: ${totalItems}
            </div>
            <div class="col-sm-1">
                <c:forEach begin="1" end="${totalPages}" var="i">
                    <c:choose>
                        <c:when test="${currentPage != i}">
                            <a href="<c:url value='/page/${i}?sortField=${sortField}&sortDir=${sortDir}' />">${i}</a>
                        </c:when>
                        <c:otherwise>
                            ${i}
                        </c:otherwise>
                    </c:choose>
                    &nbsp; &nbsp;
                </c:forEach>
            </div>
            <div class="col-sm-1">
                <c:if test="${currentPage < totalPages}">
                    <a href="<c:url value='/page/${currentPage + 1}?sortField=${sortField}&sortDir=${sortDir}' />">Next</a>
                </c:if>
                <c:if test="${currentPage >= totalPages}">
                    Next
                </c:if>
            </div>

            <div class="col-sm-1">
                <c:if test="${currentPage < totalPages}">
                    <a href="<c:url value='/page/${totalPages}?sortField=${sortField}&sortDir=${sortDir}' />">Last</a>
                </c:if>
                <c:if test="${currentPage >= totalPages}">
                    Last
                </c:if>
            </div>
        </div>
    </c:if>
</div>
</body>
</html>
