<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  isELIgnored="false" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8"><title>Insert title here</title>
</head>
<body>
 <h1>Welcome to home page</h1>
</body>
<h1>${message}</h1>
<center>
   
	<c:forEach var="u" items="${user}">
	      <h1>${u.getId()}   ${u.getName()}   ${u.getPhone()} ${u.getAge()} ${u.getAddresh()}  ${u.getPassword()}</h1>
	        
	      
	</c:forEach>


</center>
</html>