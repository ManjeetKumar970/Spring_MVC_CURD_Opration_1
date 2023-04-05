<%@page import="java.util.List"%>
<%@page import="org.jsp.usermvcApp.service.UserService"%>
<%@page import="org.jsp.usermvcApp.dto.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<title>Home</title>
 
</head>
<body>
<center>${message}</center>
<div class="container" >

<center>
<a href="Fetch"><input type="submit" value="FETCH " class="btn btn-primary"></a>
<a href="logout"><input type="submit" value="Logout " class="btn btn-primary"></a>
</center>

<center>
 <table class="table">
    <thead class="table-dark">
      <tr>
        <th>ID</th>
        <th>NAME</th>
        <th>PHONE</th>
        <th>AGE</th>
        <th>ADDRESH</th>
        <th>PASSWORD</th>
        <th></th>
        <th></th>
         <th></th>
        <th></th>
      </tr>
    </thead>
    <tbody>
      <tr>
      <c:forEach var="u" items="${us}">
	   <td>${u.getId()}</td> 
	   <td>${u.getName()}</td>
	   <td>${u.getPhone()}</td>
	    <td>${u.getAge()}</td>
	   <td> ${u.getAddresh()}</td>
	   <td>${u.getPassword()}</td>
	   <td><a href="Delete?id=${u.getId()}"><input type="button" class="btn btn-primary" value="DELETE"></input> </a></td> 
	 <td>
	 <a href="edit?id=${u.getId()}"><input type="button" class="btn btn-primary" value="UPDATE"></input> </a>    
	 </td>
	 </tr>
	</c:forEach>
    
    </tbody>
</table> 
</center>
</div>
</body>
</html>