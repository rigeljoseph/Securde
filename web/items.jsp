<%-- 
    Document   : items
    Created on : Mar 1, 2018, 2:36:06 AM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
           <link rel="stylesheet" href="home.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
           <ul>
            <li> <a href="index.jsp"> HOME </a></li>
            <li><a href="items.jsp">ITEMS </a></li>
            
            <%-- LOGIN STUFF --%>
          
            <form action="login" method="post"  style="float:right">
             <li>   USERNAME: <input type="text" name="email"></li>
             <li>   PASSWORD: <input type="password" name="pword"></li>
             <li>   <input type="submit" value="LOGIN"> </li>
            </form> 
               <li style="float:right"> <a href="register.jsp"> REGISTER </a></li>
              <%-- if may session 
              <li> get user name + cart </li>
              --%>
        </ul>
        
        
        <div id="photos">
            <% for (int n=0; n <2; n++){
                for (int i=0; i <4; i++){%>
         
                <a href="index.jsp"> <img src="jacket.jpg"<%-- DITO LAGAY YUNG PHOTOS FROM DB, CHANGE SRC--%> alt="Smiley face"> <a>
            <% } %>
            <br><br>
           <% }%>
        </div>
    </body>
</html>
