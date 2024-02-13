<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <!-- Page Header Start -->
  <div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
    <div class="container text-center py-5">
      <h1 class="display-2 text-dark mb-4 animated slideInDown">Message</h1>
      <nav aria-label="breadcrumb animated slideInDown">
        <ol class="breadcrumb justify-content-center mb-0">
          <li class="breadcrumb-item">
            <a href="home">Home</a>
          </li>
          <li class="breadcrumb-item">
            <a href="#">Pages</a>
          </li>
          <li class="breadcrumb-item text-dark" aria-current="page">Message</li>
        </ol>
      </nav>
    </div>
  </div>
  <!-- Page Header End -->


  <!-- Message Start -->
  <div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
    <div class="container text-center">
      <div class="row justify-content-center">
        <div class="col-lg-6">
          <i class="bi bi-exclamation-triangle display-1 text-primary"></i>
          <h1 class="display-1">Message</h1>
          <h1 class="mb-4">${ message }</h1>
          <a class="btn btn-primary rounded-pill py-3 px-5" href="home">Go Back To Home</a>
        </div>
      </div>
    </div>
  </div>
  <!-- 404 End -->
</body>
</html>