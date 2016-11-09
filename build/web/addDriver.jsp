<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : response
    Created on : Apr 8, 2015, 6:25:28 AM
    Author     : Nathie
--%>
<c:set var="tourDetails" value="${passengers}"/>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title> Add Drivers </title>
    </head>
    <body>
        <h1>Add Drivers</h1>
        
           
       
 
<form  action="dri">
   <table cellpadding="2" cellspacing="0" border="1" width="500">
     
      <tr>
         <td width="300">Driver ID:</td>
         <td colspan="3"><input class="left" type="text" name="driver_ID"  style="width: 150px;"></td>
      </tr>
      <tr>
          <td>Name:</td>
         <td colspan="3"><input class="left" type="text" name="name"  style="width: 150px;"></td>
      </tr>
        <tr>
          <td>Address ID:</td>
         <td colspan="3"><input class="left" type="text" name="add_ID" value=${add_ID} style="width: 150px;"></td>
       
        <tr>
          
          <td>Contact ID:</td>
         <td colspan="3"><input class="left" type="text" name="contact_ID" value=${contact_ID} style="width: 150px;"></td>
        </tr>
      </tr>
      
      
      <tr>
          <td colspan="4" align="center"><input type="submit" value="Add Address" style="margin-left: 20px; width: 160px "></td>
    
        </td>
      </tr>
  
   </table>
</form>
</body>
</html>
