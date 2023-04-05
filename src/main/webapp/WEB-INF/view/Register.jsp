<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
 
<!DOCTYPE html>
<html> 
<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">

<title>Insert title here</title>
</head>
<body>
<section class="h-100 h-custom" style="background-color: #8fc4b7;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-lg-8 col-xl-6">
        <div class="card rounded-3">
          <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img3.webp"
            class="w-100" style="border-top-left-radius: .3rem; border-top-right-radius: .3rem;"
            alt="Sample photo">
          <div class="card-body p-4 p-md-5">
            <h3 class="mb-4 pb-2 pb-md-0 mb-md-5 px-md-2">Registration Info</h3>

            <form:form modelAttribute="user" action="reg" method="post" class="px-md-2">

              <div class="form-outline mb-4">
                <form:input path="name" type="text" id="form3Example1q" class="form-control" />
                <form:label path="name" class="form-label" for="form3Example1q">NAME</form:label>
              </div>
               <div class="form-outline mb-4">
                <form:input path="age" type="text" id="form3Example1q" class="form-control" />
                <form:label path="age" class="form-label" for="form3Example1q">AGE</form:label>
              </div>
               <div class="form-outline mb-4">
                <form:input path="phone" type="text" id="form3Example1q" class="form-control" />
                <form:label path="phone" class="form-label" for="form3Example1q">PHONE</form:label>
              </div>
               <div class="form-outline mb-4">
                <form:input path="addresh" type="text" id="form3Example1q" class="form-control" />
                <form:label path="addresh" class="form-label" for="form3Example1q">ADDRESH</form:label>
              </div>
                <div class="form-outline mb-4">
                <form:input path="password" type="password" id="form3Example1q" class="form-control" />
                <form:label path="password" class="form-label" for="form3Example1q">PASSWORD</form:label>
              </div>
              
              <button type="submit" class="btn btn-success btn-lg mb-1">Submit</button>
            </form:form>
                 <h3>${message}</h3>    
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</body>
</html>