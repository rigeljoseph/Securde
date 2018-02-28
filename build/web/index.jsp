<%-- 
    Document   : index
    Created on : Feb 26, 2018, 3:52:30 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" href="home.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
        <ul>
            <li> <a> HOME </a></li>
            <li><a>ITEMS </a></li>
            
            <%-- LOGIN STUFF --%>

            <form action="login" method="post"  style="float:right">
             <li>   USERNAME: <input type="text" name="email"></li>
             <li>   PASSWORD: <input type="password" name="pword"></li>
             <li>   <input type="submit" value="LOGIN"> </li>
            </form> 
            
              <%-- if may session 
              <li> get user name + cart </li>
              --%>
        </ul>
        
        
        <div id="photos">
            <% for (int n=0; n <2; n++){
                for (int i=0; i <5; i++){%>
         
                <a href="index.jsp"> <img src="dlsu.png"<%-- DITO LAGAY YUNG PHOTOS FROM DB, CHANGE SRC--%> alt="Smiley face"> <a>
            <% } %>
            <br><br>
           <% }%>
        </div>
    </body>
</html>
