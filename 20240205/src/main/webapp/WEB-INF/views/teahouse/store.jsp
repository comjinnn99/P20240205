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
  <div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
    <div class="container text-center py-5">
      <h1 class="display-2 text-dark mb-4 animated slideInDown">Tea Store</h1>
      <nav aria-label="breadcrumb animated slideInDown">
        <ol class="breadcrumb justify-content-center mb-0">
          <li class="breadcrumb-item">
            <a href="home">Home</a>
          </li>
          <li class="breadcrumb-item">
            <a href="#">Pages</a>
          </li>
          <li class="breadcrumb-item text-dark" aria-current="page">Store</li>
        </ol>
      </nav>
    </div>
  </div>
  <!-- Page Header End -->


  <!-- Store Start -->
  <div class="container-xxl py-5">
    <div class="container">
      <div class="section-title text-center mx-auto wow fadeInUp" data-wow-delay="0.1s" style="max-width: 500px;">
        <p class="fs-5 fw-medium fst-italic text-primary">Online Store</p>
        <h1 class="display-6">Want to stay healthy? Choose tea taste</h1>
      </div>
      <div class="row g-4">
      
        <c:forEach items="${ products }" var="p">
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
            <div class="store-item position-relative text-center">
              <img class="img-fluid" src="resources/img/${ p.productImg }" alt="">
              <div class="p-4">
                <div class="text-center mb-3">
                  <small class="fa fa-star text-primary"></small>
                  <small class="fa fa-star text-primary"></small>
                  <small class="fa fa-star text-primary"></small>
                  <small class="fa fa-star text-primary"></small>
                  <small class="fa fa-star text-primary"></small>
                </div>
                <h4 class="mb-3">${ p.productName }</h4>
                <p>${ p.productSubject }</p>
                <h4 class="text-primary">\$${ p.productPrice }</h4>
              </div>
              <div class="store-overlay">
                <a href="" class="btn btn-primary rounded-pill py-2 px-4 m-2">
                  More Detail <i class="fa fa-arrow-right ms-2"></i>
                </a>
                <a href="" class="btn btn-dark rounded-pill py-2 px-4 m-2">
                  Add to Cart <i class="fa fa-cart-plus ms-2"></i>
                </a>
              </div>
            </div>
          </div>
        </c:forEach>
        
        <div class="col-12 text-center wow fadeInUp" data-wow-delay="0.1s">
          <a href="" class="btn btn-primary rounded-pill py-3 px-5">View More Products</a>
        </div>
        
      </div>
    </div>
  </div>
  <!-- Store End -->
</body>
</html>