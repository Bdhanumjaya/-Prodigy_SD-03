<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CONTACT CARD</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
    crossorigin="anonymous">
</head>
<body>
<header>
    <nav class="navbar navbar-expand-md navbar-dark" style="background-color: blue">
        <div>
            <a href="" class="navbar-brand"> Contact Management </a>
        </div>
        <ul class="navbar-nav">
            <li><a href="<%=request.getContextPath()%>/list" class="nav-link">Users</a></li>
        </ul>
    </nav>
</header>
<br>
<div class="container col-md-5">
    <div class="card">
        <div class="card-body">
            <form action="${user != null ? 'update' : 'insert'}" method="post">
                <caption>
                    <h2>${user != null ? 'Edit User' : 'Add New Contact'}</h2>
                </caption>
                <c:if test="${user != null}">
                    <input type="hidden" name="id" value="${user.id}" />
                </c:if>
                <fieldset class="form-group">
                    <label> Name</label>
                    <input type="text" value="${user != null ? user.name : ''}" class="form-control" name="name"
                        required="required">
                </fieldset>
                <fieldset class="form-group">
                    <label>Contact Number</label>
                    <input type="text" value="${user != null ? user.number : ''}" class="form-control" name="number">
                </fieldset>
                <fieldset class="form-group">
                    <label> Email </label>
                    <input type="text" value="${user != null ? user.email : ''}" class="form-control" name="email">
                </fieldset>
                <button type="submit" class="btn btn-success">Save</button>
            </form>
        </div>
    </div>
</div>

<br/>  
<div class="container text-center"> <!-- Centering the button -->
    <a href="ViewServlet" class="btn btn-success">View Contact List</a>
</div> 
</body>
</html>
