<%-- 
    Document   : contentprovider
    Created on : May 7, 2023, 2:12:00 PM
    Author     : farhan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>hey Provide</h1
        <%
        HttpSession sess=request.getSession(false);
        if(session==null){
        response.sendRedirect("http://localhost:8080/olp/fc/?action=view&page=index");
           }
           else{
                if(Integer.parseInt(session.getAttribute("user_type").toString())==2){
                    response.sendRedirect("http://localhost:8080/olp/fc/?action=view&page=index");
            }
      }
        %>
    <li><a href="http://localhost:8080/olp/fc/?action=model&page=LogoutModel">out</a></li>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="WEB-INF/Style/project.css" type="text/css"/>
    <script src="validator.js" type="text/javascript"></script>
    <script src="getcountries.js" type="text/javascript"></script>

    <body>
        <nav class="navbar navbar-expand-md navbar-info bg-info ">
            <div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
                <h5>Content Provider Page</h5>
                <form class="form-inline mx-auto my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" style="margin-left: 200px" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-dark my-2 my-sm-0" type="submit">Search</button>
                </form>  
            </div>

            <div class="navbar-collapse collapse w-100 order-3 dual-collapse2">

                <div>
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item" style="padding-left: 220px;">
                            <a class="nav-link"  style="color: black " href="#">Home</a>
                        </li>
                        <li class="nav-item" style="margin-left: 10px;">
                            <a class="nav-link" style="color: black" href="#">Contact us</a>
                        </li>
                        <li class="nav-item" style="margin-left: 10px;">
                            <a class="nav-link" style="color: black" href="#">About us</a>
                        </li>   
                    </ul>
                </div>
                <a href="http://localhost:8080/elearningproject/c/?action=model&page=LogoutModel" class="btn btn-success" style="margin-left: 100px">Logout</a>
            </div>
        </nav>
        <div class="row">
            <div class="col-lg-4 mb-4">
                <div class="container-fluid">
                    <form action="your-post-action" method="POST" enctype="multipart/form-data">
                        <div class="form-group">
                            <label for="category">Select Category:</label>
                            <select class="form-control" onclick="getCategory();" id="category" name="category">
                                <!-- Add options for category selection -->
                                <option value="category1">Category 1</option>
                                <option value="category2">Category 2</option>
                                <!-- Add more options as needed -->
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="subcategory">Select Subcategory:</label>
                            <select class="form-control" onclick="getSubCategory('cat')" id="subcategory" name="subcategory">
                                <!-- Add options for subcategory selection -->
                                <option value="subcategory1">Subcategory 1</option>
                                <option value="subcategory2">Subcategory 2</option>
                                <!-- Add more options as needed -->
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="topic">Select Topic:</label>
                            <select class="form-control" id="topic" name="topic">
                                <!-- Add options for topic selection -->
                                <option value="topic1">Topic 1</option>
                                <option value="topic2">Topic 2</option>
                                <!-- Add more options as needed -->
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="title">Title:</label>
                            <input type="text" class="form-control" id="title" name="title" required>
                        </div>
                        <div class="form-group">
                            <label for="article">Article:</label>
                            <textarea class="form-control" id="article" name="article" rows="5" required></textarea>
                        </div>
                        <div class="form-group">
                            <label for="image">Upload Image:</label>
                            <input type="file" class="form-control-file" id="image" name="image">
                        </div>
                        <button type="submit" class="btn btn-primary btn-block">Post Article</button>
                    </form>
                </div>
            </div>

            <div class="col-lg-4 mb-4">
                <div class="container-fluid">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Previous Topic</h5>
                            <p class="card-text">Content for the previous topic goes here.</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-4 mb-4">
                <div class="container-fluid">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Updated Topics</h5>
                            <p class="card-text">Content for updated topics goes here.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

<li><a href="http://localhost:8080/olp/fc/?action=model&page=LogoutModel">out</a></li>
