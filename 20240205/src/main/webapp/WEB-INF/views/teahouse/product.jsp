<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <!-- Page Header Start -->
  <div class="container-fluid page-header py-5 wow fadeIn" data-wow-delay="0.1s">
    <div class="container text-center py-5">
      <h1 class="display-2 text-dark mb-4 animated slideInDown">Products</h1>
      <nav aria-label="breadcrumb animated slideInDown">
        <ol class="breadcrumb justify-content-center mb-0">
          <li class="breadcrumb-item">
            <a href="home">Home</a>
          </li>
          <li class="breadcrumb-item">
            <a href="#">Pages</a>
          </li>
          <li class="breadcrumb-item text-dark" aria-current="page">Products</li>
        </ol>
      </nav>
    </div>
  </div>
  <!-- Page Header End -->


  <!-- Products Start -->
  <div class="container-fluid product py-5">
    <div class="container py-5">
      <div class="section-title text-center mx-auto wow fadeInUp" data-wow-delay="0.1s" style="max-width: 500px;">
        <p class="fs-5 fw-medium fst-italic text-primary">Our Products</p>
        <h1 class="display-6">Tea has a complex positive effect on the body</h1>
      </div>
      <div class="owl-carousel product-carousel wow fadeInUp" data-wow-delay="0.5s">
        <c:forEach items="${ products }" var="p">
          <a href="" class="d-block product-item rounded">
            <img src="resources/img/${ p.productImg }" alt="">
            <div class="bg-white shadow-sm text-center p-4 position-relative mt-n5 mx-4">
              <h4 class="text-primary">${ p.productName }</h4>
              <span class="text-body">${ p.productSubject }</span>
            </div>
          </a>
        </c:forEach>
      </div>
    </div>
  </div>
  <!-- Products End -->
</body>
</html>