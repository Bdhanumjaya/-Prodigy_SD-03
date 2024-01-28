<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
  
<html>

<head>
    <title>Contact Management </title>
    <link rel="stylesheet" 
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
    crossorigin="anonymous">
    <style>
        body {
            padding-top: 60px; /* Adjust the top padding to match your header height */
        }

        header {
            box-shadow: 0 4px 2px -2px gray;
        }

        .container {
            border: 1px solid #ccc;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin: 20px auto;
        }

        .btn {
            margin-bottom: 10px;
        }
    </style>
</head>

<body>

    <header>
        <nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
            <div>
                <a href="https://www.xadmin.net" class="navbar-brand"> Contact Management </a>
            </div>

            <ul class="navbar-nav">
                <li><a href="<%=request.getContextPath()%>/ViewServlet" class="nav-link">My Contact List</a></li>
            </ul>
        </nav>
    </header>
    <br>

    <div class="container">
        <h3 class="text-center">CONTACT CARD</h3>
        <hr>
        <div class="container text-left">
            <a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add New Contact</a>
        </div>
        <br>
    </div>

    <div class="container text-left">
        <a href="ViewServlet" class="btn btn-success">View Contact List</a>
    </div>  

</body>

</html>
