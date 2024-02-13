<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
  <!-- Spinner Start -->
  <div id="spinner"
    class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
    <div class="spinner-border text-primary" role="status" style="width: 3rem; height: 3rem;"></div>
  </div>
  <!-- Spinner End -->


  <!-- Navbar Start -->
  <div class="container-fluid bg-white sticky-top">
    <div class="container">
      <nav class="navbar navbar-expand-lg bg-white navbar-light py-2 py-lg-0">
        <a href="home" class="navbar-brand">
          <img class="img-fluid" src="resources/img/logo.png" alt="Logo">
        </a>
        <button type="button" class="navbar-toggler ms-auto me-0" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
          <div class="navbar-nav ms-auto">
            <a href="home" class="nav-item nav-link active">Home</a>
            <a href="about" class="nav-item nav-link">About</a>
            <a href="product" class="nav-item nav-link">Products</a>
            <a href="store" class="nav-item nav-link">Store</a>
            <div class="nav-item dropdown">
              <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
              <div class="dropdown-menu bg-light rounded-0 m-0">
                <a href="feature" class="dropdown-item">Features</a>
                <a href="blog" class="dropdown-item">Blog Article</a>
                <a href="testimonial" class="dropdown-item">Testimonial</a>
                <c:if test="${ empty userId }">
                  <a href="login" class="dropdown-item">Login</a>
                </c:if>
                <c:if test="${ not empty userId }">
                  <a href="logout" class="dropdown-item">Logout</a>
                </c:if>
                <a href="page404" class="dropdown-item">404 Page</a>
              </div>
            </div>
            <a href="contact" class="nav-item nav-link">Contact</a>
          </div>
          <!-- 검색 -->
          <div class="border-start ps-4 d-none d-lg-block">
            <button type="button" class="btn btn-sm p-0">
              <i class="fa fa-search"></i>
            </button>
          </div>
          <!-- 로그인 시 이름 출력 -->
          <c:if test="${ not empty userId }">
            <div class="border-start ps-4 d-none d-lg-block">
            <c:if test="${ author eq 'admin' }">
              <button type="button" class="btn btn-sm p-0" onclick="location.href='adminpage'">
                <i class="fa">${ userName }</i>
              </button>
            </c:if>
            <c:if test="${ author eq 'user' }">
              <button type="button" class="btn btn-sm p-0">
                <i class="fa">${ userName }</i>
              </button>
            </c:if>
            </div>
          </c:if>
        </div>
      </nav>
    </div>
  </div>
  <!-- Navbar End -->

</body>
</html>