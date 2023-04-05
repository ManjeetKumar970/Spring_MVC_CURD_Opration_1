<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<title>Login</title>
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
            <h3 class="mb-4 pb-2 pb-md-0 mb-md-5 px-md-2">Login Info</h3>

            <form class="px-md-2" action="Login" method="Post">

              <div class="form-outline mb-4">
                <input type="text" id="form3Example1q" class="form-control" name="nm" />
                <label class="form-label" for="form3Example1q">Name</label>
              </div>
                <div class="form-outline mb-4">
                <input type="password" id="form3Example1q" class="form-control"  name="pd"/>
                <label class="form-label" for="form3Example1q">Password</label>
              </div>
              
              <button type="submit" class="btn btn-success btn-lg mb-1">Submit</button>
                <a href="load">Click to Register</a>
            </form>
              <h3>${message}</h3>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

</body>
</html>