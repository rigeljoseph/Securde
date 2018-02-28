<%-- 
    Document   : register
    Created on : Mar 1, 2018, 12:35:06 AM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
         <link rel="stylesheet" href="home.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
    </head>
    
    <body>
          <ul>
            <li> <a href="index.jsp"> HOME </a></li>
            <li><a>ITEMS </a></li>
            
            
            <%-- LOGIN STUFF --%>
            
            <form action="login" method="post"  style="float:right">
             <li>   USERNAME: <input type="text" name="email"></li>
             <li>   PASSWORD: <input type="password" name="pword"></li>
             <li>   <input type="submit" value="LOGIN"> </li>
            </form> 
             <li style="float:right"> <a href="register.jsp"> REGISTER </a></li>
      
        </ul>
    
         <div id="reg">
             <table>
               <form action="register" method="post"  >
                   <tr> <td>FIRST NAME: </td><td><input type="text" name="f_name"></td></tr>
               <tr> <td>LAST NAME:  </td><td><input type="text" name="l_name"></td></tr>
              <tr> <td>EMAIL: </td><td><input type="text" name="email"></td></tr>
              <tr> <td>PASSWORD: </td><td><input type="password" name="pword"></td></tr>
              <tr><td> <input type="submit" value="SUBMIT"></td></tr>
             </table>
             
               
            </form> 
         
          </div>
      
    
    
    
    </body>
</html>
