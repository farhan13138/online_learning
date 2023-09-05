<%-- 
    Document   : contentseeker
    Created on : May 7, 2023, 2:12:44 PM
    Author     : farhan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" crossorigin="anonymous">
    </head>
    <body>
        <h1>content seeker</h1>
        <%
        HttpSession sess = request.getSession(false);
        if(sess== null){
            response.sendRedirect("http://localhost:8080/olp/fc/?action=view&page=login");
            }else{
                if(Integer.parseInt(sess.getAttribute("user_type").toString())==1){
                response.sendRedirect("http://localhost:8080/olp/fc/?action=view&page=contentprovider");
                }
            }
        %> 


        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#">OLP</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="/about.html">About Us</a>
                    </li>


                    <li class="nav-item">
                        <a class="nav-link active" href="/contact.html">Contact Us</a>
                    </li>



                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
                </form>
                <div class="mx-2">
                </div>
            </div>
        </nav>
        
      
      <div class="container" style="color:green">
    </div>
    <div class="container">
        <br>
        <form class="form-inline" action="/action_page.php">
            <label for="email">Select Category:</label>
            <select class="form-control" id="select Category" onclick="getcategory('category')" name="category">
            </select>
      
             <label for="email">Select Subcategory:</label>
            <select class="form-control" id="select subcategory" onclick="subcategory('category')" name="subcategory">
            </select>
             
              <label for="email">Select Topic:</label>
            <select class="form-control" id="select topic" onclick="topic('topic')" name="selecttopic">
            </select>
              
               <label for="email">Select Provider:</label>
            <select class="form-control" id="select provider" onclick="selectprovider('provider)" name="provider">
            </select>
               
              <a href="#" class="btn btn-primary">SHOW</a>
        </form>
    </div>  
        
        
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4,0.0/dist/js/bootsrap.min.js"></script>
        <p><a href="http://localhost:8080/olp/fc/?action=model&page=logoutmodel">LOG OUT</a></p>

    </body>
</html>

